//
//  StylizeFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

public func blendWithAlphaMask(overlay: CIImage, maskImage: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputMaskImageKey: maskImage,
            kCIInputBackgroundImageKey: image!,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIBlendWithAlphaMask", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func blendWithMask(overlay: CIImage, maskImage: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputMaskImageKey: maskImage,
            kCIInputBackgroundImageKey: image!,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIBlendWithMask", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func bloom(radius: Float, intensity: Float) -> Filter {
    return radiusIntensityFilter(name: "CIBloom")(radius, intensity)
}

public func comicEffect() -> Filter { return singularFilter(filterName: "CIComicEffect") }

public func convolution3X3(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter(name: "CIConvolution3X3")(weights, bias)
}

public func convolution5X5(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter(name: "CIConvolution5X5")(weights, bias)
}

public func convolution7X7(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter(name: "CIConvolution7X7")(weights, bias)
}

public func convolution9Vertical(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter(name: "CIConvolution9Vertical")(weights, bias)
}

public func convolution9Horizontal(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter(name: "CIConvolution9Horizontal")(weights, bias)
}

public func crystalize(center: CGPoint, radius: Float) -> Filter {
    return centerRadiusFilter(name: "CICrystalize")(center, radius)
}

public func depthOfField(point1: CGPoint, point2: CGPoint, saturation: Float, unsharpMaskRadius: Float, unsharpMaskIntensity: Float, radius: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputPoint1": CIVector(cgPoint:point1),
            "inputPoint2": CIVector(cgPoint:point2),
            kCIInputSaturationKey:saturation,
            "inputUnsharpMaskRadius":unsharpMaskRadius,
            "inputUnsharpMaskIntensity":unsharpMaskIntensity,
            kCIInputRadiusKey: radius,
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CIDepthOfField", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func edges(intensity: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputIntensityKey: intensity,
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CIEdges", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func edgeWork(radius: Float) -> Filter {
    return radiusFilter(name: "CIEdgeWork")(radius)
}

public func gloom(radius: Float, intensity: Float) -> Filter {
    return radiusIntensityFilter(name: "CIGloom")(radius, intensity)
}

public func heightFieldFromMask(radius: Float) -> Filter {
    return radiusFilter(name: "CIHeightFieldFromMask")(radius)
}

public func hexagoanalPixellate(center: CGPoint, scale: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputScaleKey: scale,
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CIHexagonalPixellate", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func highlightShadowAdjust(highlightAmount: Float, shadowAmount: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputHighlightAmount":highlightAmount,
            "inputshadowAmount": shadowAmount,
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CIHighlightShadowAmount", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func lineOverlay(nrNoiseLevel: Float, nrSharpness: Float, edgeIntensity: Float, threshold: Float, contrast: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputNRNoiseLevel":nrNoiseLevel,
            "inputNRSharpness": nrSharpness,
            "inputEdgeIntensity":edgeIntensity,
            "inputThreshold":threshold,
            "inputContrast":contrast,
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CILineOverlay", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func pixellate(center: CGPoint, scale: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputScaleKey: scale,
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CIPixellate", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func pointilize(radius: Float, center: CGPoint) -> Filter {
    return centerRadiusFilter(name: "CIPointilize")(center,radius)
}

public func shadedMaterial(shadingImage:CIImage, scale: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputShadingImage":shadingImage,
            kCIInputScaleKey: scale,
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CIShadedMaterial", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func spotColor(
    centerColor1: CIColor, replacementColor1: CIColor, closeness1: Float, contrast1: Float,
    centerColor2: CIColor, replacementColor2: CIColor, closeness2: Float, contrast2: Float,
    centerColor3: CIColor, replacementColor3: CIColor, closeness3: Float, contrast3: Float
    ) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputCenterColor1":centerColor1,
            "inputReplacementColor1":replacementColor1,
            "inputCloseness1":closeness1,
            "inputContrast1":contrast1,
            
            "inputCenterColor2":centerColor2,
            "inputReplacementColor2":replacementColor2,
            "inputCloseness1":closeness2,
            "inputContrast1":contrast2,
            
            "inputCenterColor3":centerColor3,
            "inputReplacementColor3":replacementColor3,
            "inputCloseness1":closeness3,
            "inputContrast1":contrast3,
            
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CISpotColor", withInputParameters: parameters)!
        return filter.outputImage
    }
}

public func spotLight(lightPosition:CIVector, lightPointsAt:CIVector, brightness:Float, concentration:Float, color:CIColor) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputLightPosition":lightPosition,
            "inputLightPointsAt":lightPointsAt,
            "inputConcentration":concentration,
            kCIInputBrightnessKey:brightness,
            kCIInputColorKey:color,
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:"CISpotColor", withInputParameters: parameters)!
        return filter.outputImage
    }
}
