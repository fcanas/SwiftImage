//
//  ColorEffectFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

// MARK: - CICategoryColorEffect

func colorCrossPolynomial(redCoefficients: CIVector, greenCoefficients: CIVector, blueCoefficients: CIVector) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputRedCoefficients": redCoefficients,
            "inputGreenCoefficients": greenCoefficients,
            "inputBlueCoefficients": blueCoefficients,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorCrossPolynomial", withInputParameters:parameters)
        return filter.outputImage
    }
}

func colorCube(dimension: Int, cube: NSData) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputCubeDimension": dimension,
            "inputCubeData": cube,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorCube", withInputParameters:parameters)
        return filter.outputImage
    }
}

func colorCubeWithColorSpace(dimension: Int, cube: NSData, colorSpace: CGColorSpaceRef) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputCubeDimension": dimension,
            "inputCubeData": cube,
            "inputColorSpace": colorSpace,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorCubeWithColorSpace", withInputParameters:parameters)
        return filter.outputImage
    }
}

func colorInvert() -> Filter {
    return singularFilterWithName("CIColorInvert")
}

func colorMap(gradientImage: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputGradientImage":gradientImage,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorMap", withInputParameters:parameters)
        return filter.outputImage
    }
}

func colorMonochrome(color: CIColor, intensity: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputColorKey:color,
            kCIInputIntensityKey:intensity,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorMonochrome", withInputParameters:parameters)
        return filter.outputImage
    }
}

func colorPosterize(levels: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputLevels":levels,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIColorPosterize", withInputParameters:parameters)
        return filter.outputImage
    }
}

func falseColor(color0: CIColor, color1: CIColor) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputColor0":color0,
            "inputColor1":color1,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIFalseColor", withInputParameters:parameters)
        return filter.outputImage
    }
}

func maskToAlpha() -> Filter {
    return singularFilterWithName("CIMaskToAlpha")
}

func maximumComponent() -> Filter {
    return singularFilterWithName("CIMaximumComponent")
}

func minimumComponent() -> Filter {
    return singularFilterWithName("CIMinimumComponent")
}

func photoEffectChrome() -> Filter {
    return singularFilterWithName("CIPhotoEffectChrome")
}

func photoEffectFade() -> Filter {
    return singularFilterWithName("CIPhotoEffectFade")
}

func photoEffectInstant() -> Filter {
    return singularFilterWithName("CIPhotoEffectInstant")
}

func photoEffectMono() -> Filter {
    return singularFilterWithName("CIPhotoEffectMono")}

func photoEffectNoir() -> Filter {
    return singularFilterWithName("CIPhotoEffectNoir")
}

func photoEffectProcess() -> Filter {
    return singularFilterWithName("CIPhotoEffectProcess")}

func photoEffectTonal() -> Filter {
    return singularFilterWithName("CIPhotoEffectTonal")
}

func photoEffectTransfer() -> Filter {
    return singularFilterWithName("CIPhotoEffectTransfer")
}

func sepiaTone(intensity: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputIntensityKey:intensity,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CISepiaTone", withInputParameters:parameters)
        return filter.outputImage
    }
}

func vignette(radius: Float, intensity: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputIntensityKey:intensity,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIVignette", withInputParameters:parameters)
        return filter.outputImage
    }
}

func vignetteEffect(center: CGPoint, radius: Float, intensity: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputRadiusKey:radius,
            kCIInputIntensityKey:intensity,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIVignette", withInputParameters:parameters)
        return filter.outputImage
    }
}



