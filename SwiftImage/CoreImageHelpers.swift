//
//  CoreImageHelpers.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/11/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import UIKit
import CoreImage

public typealias Filter = CIImage -> CIImage

public typealias CIParameters = Dictionary<String, AnyObject>

// MARK: - Composition Operator

infix operator ~~> { associativity left }

func ~~> (filter1: Filter, filter2: Filter) -> Filter {
    return { img in filter2(filter1(img)) }
}

// MARK: - CICategoryBlur

/* Available on Mac OS X
func boxBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIBoxBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

func discBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIDiscBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

func medianBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputImageKey: image]
        let filter = CIFilter(name:"CIMedianBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

func motionBlur(radius: Double, angle: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputAngleKey: angle, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIMotionBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

func noiseReduction(inputNoiseLevel: Double, inputSharpness: Double) -> Filter {
    return { image in
        let parameters : CIParameters = ["inputNoiseLevel": inputNoiseLevel, "inputSharpness": inputSharpness, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIMotionBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}
*/

func gaussianBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIGaussianBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

// MARK: - CICategoryColorAdjustment

func colorClamp(minComponents: UIColor, maxComponents: UIColor) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputMaxComponents": CIVector(color:maxComponents),
            "inputMinComponents": CIVector(color:minComponents),
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorClamp", withInputParameters:parameters)
        return filter.outputImage
    }
}

func colorControls(saturation: CGFloat, brightness: CGFloat, contrast: CGFloat) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputSaturationKey: saturation,
            kCIInputBrightnessKey: brightness,
            kCIInputContrastKey: contrast,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorControls", withInputParameters:parameters)
        return filter.outputImage
    }
}

func colorMatrix(r: UIColor, g: UIColor, b: UIColor, a: UIColor, bias: UIColor) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputRVector": CIVector(color: r),
            "inputGVector": CIVector(color: g),
            "inputBVector": CIVector(color: b),
            "inputAVector": CIVector(color: a),
            "inputBiasVector": CIVector(color: bias),
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorControls", withInputParameters:parameters)
        return filter.outputImage
    }
}

func colorPolynomial(r: CIVector, g: CIVector, b: CIVector, a: CIVector) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputRedCoefficients": r,
            "inputGreenCoefficients": g,
            "inputBlueCoefficients": b,
            "inputAlphaCoefficients": a,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorPolynomial", withInputParameters:parameters)
        return filter.outputImage
    }
}

func exposureAdjust(EV: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputEVKey: EV, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIExposureAdjust", withInputParameters:parameters)
        return filter.outputImage
    }
}

func gammaAdjust(power: Double) -> Filter {
    return { image in
        let parameters : CIParameters = ["inputPower": power, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIGammaAdjust", withInputParameters:parameters)
        return filter.outputImage
    }
}

func hueAdjust(angle: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputAngleKey: angle, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIHueAdjust", withInputParameters:parameters)
        return filter.outputImage
    }
}

func linearToSRGBToneCurve() -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputImageKey: image]
        let filter = CIFilter(name:"CILinearToSRGBToneCurve", withInputParameters:parameters)
        return filter.outputImage
    }
}

func SRGBToneCurveToLinear() -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputImageKey: image]
        let filter = CIFilter(name:"CISRGBToneCurveToLinear", withInputParameters:parameters)
        return filter.outputImage
    }
}

// MARK: - Other

extension CIVector {
    convenience init(color: UIColor){
        var r :CGFloat = 0
        var g :CGFloat = 0
        var b :CGFloat = 0
        var a :CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        self.init(x: r, y: g, z: b, w: a)
    }
}

func colorGenerator(color: UIColor) -> Filter {
    return { _ in
        let filter = CIFilter(name:"CIConstantColorGenerator", withInputParameters: [kCIInputColorKey: CIColor(color: color)!])
        return filter.outputImage
    }
}

func sourceOverCompositing(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CISourceOverCompositing", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func colorOverlay(color: UIColor) -> Filter {
    return { image in
        let overlay = colorGenerator(color)(image)
        return sourceOverCompositing(overlay)(image)
    }
}


