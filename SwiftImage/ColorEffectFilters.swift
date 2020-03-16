//
//  ColorEffectFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

// MARK: - CICategoryColorEffect

public func colorCrossPolynomial(redCoefficients: CIVector, greenCoefficients: CIVector, blueCoefficients: CIVector) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputRedCoefficients": redCoefficients,
            "inputGreenCoefficients": greenCoefficients,
            "inputBlueCoefficients": blueCoefficients,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIColorCrossPolynomial", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func colorCube(dimension: Int, cube: NSData) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputCubeDimension": dimension,
            "inputCubeData": cube,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIColorCube", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func colorCubeWithColorSpace(dimension: Int, cube: NSData, colorSpace: CGColorSpace) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputCubeDimension": dimension,
            "inputCubeData": cube,
            "inputColorSpace": colorSpace,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIColorCubeWithColorSpace", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func colorInvert() -> Filter {return singularFilter(filterName: "CIColorInvert")}

public func colorMap(gradientImage: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputGradientImage":gradientImage,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIColorMap", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func colorMonochrome(color: UIColor, intensity: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputColorKey:CIColor(cgColor:color.cgColor),
            kCIInputIntensityKey:intensity,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIColorMonochrome", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func colorPosterize(levels: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputLevels":levels,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIColorPosterize", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func falseColor(color0: UIColor, color1: UIColor) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputColor0":CIColor(cgColor:color0.cgColor),
            "inputColor1":CIColor(cgColor:color1.cgColor),
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIFalseColor", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func maskToAlpha() -> Filter {return singularFilter(filterName: "CIMaskToAlpha")}
public func maximumComponent() -> Filter {return singularFilter(filterName: "CIMaximumComponent")}
public func minimumComponent() -> Filter {return singularFilter(filterName: "CIMinimumComponent")}
public func photoEffectChrome() -> Filter {return singularFilter(filterName: "CIPhotoEffectChrome")}
public func photoEffectFade() -> Filter {return singularFilter(filterName: "CIPhotoEffectFade")}
public func photoEffectInstant() -> Filter {return singularFilter(filterName: "CIPhotoEffectInstant")}
public func photoEffectMono() -> Filter {return singularFilter(filterName: "CIPhotoEffectMono")}
public func photoEffectNoir() -> Filter {return singularFilter(filterName: "CIPhotoEffectNoir")}
public func photoEffectProcess() -> Filter {return singularFilter(filterName: "CIPhotoEffectProcess")}
public func photoEffectTonal() -> Filter {return singularFilter(filterName: "CIPhotoEffectTonal")}
public func photoEffectTransfer() -> Filter {return singularFilter(filterName: "CIPhotoEffectTransfer")}

public func sepiaTone(intensity: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputIntensityKey:intensity,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CISepiaTone", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func vignette(radius: Float, intensity: Float) -> Filter {
    return radiusIntensityFilter(name: "CIVignette")(radius, intensity)
}

func vignetteEffect(center: CGPoint, radius: Float, intensity: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputRadiusKey:radius,
            kCIInputIntensityKey:intensity,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIVignetteEffect", withInputParameters:parameters)!
        return filter.outputImage
    }
}

