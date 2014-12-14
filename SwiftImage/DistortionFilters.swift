//
//  DistortionFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

func bumpDistortion(center: CGPoint, radius: Float, scale: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputScaleKey:scale,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIBumpDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}

func bumpDistortionLinear(center: CGPoint, radius: Float, angle:Float, scale: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputAngleKey:angle,
            kCIInputScaleKey:scale,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIBumpDistortionLinear", withInputParameters:parameters)
        return filter.outputImage
    }
}

func circleSplashDistortion(center: CGPoint, radius: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CICircleSplashDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}


func circularWrap(center: CGPoint, radius: Float, angle:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputAngleKey:angle,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CICircularWrap", withInputParameters:parameters)
        return filter.outputImage
    }
}

func droste(insertionPoint0: CGPoint, insertionPoint1: CGPoint, strands: Float, periodicity :Float, rotation :Float, zoom :Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputInsertionPoint0":CIVector(CGPoint: insertionPoint0),
            "inputInsertionPoint1":CIVector(CGPoint: insertionPoint1),
            "inputStrands":strands,
            "inputPeriodicity":periodicity,
            "inputRotation":rotation,
            "inputZoom":zoom,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CICircularWrap", withInputParameters:parameters)
        return filter.outputImage
    }
}

func displacementDistortion(displacementImage: CIImage, scale :Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputDisplacementImage":displacementImage,
            kCIInputScaleKey:scale,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIDisplacementDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}

func displacementDistortion(texture: CIImage, center: CGPoint, scale :Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputTexture":texture,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputScaleKey:scale,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIGlassDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}

func glassLozenge(point0: CGPoint, point1: CGPoint, radius :Float, refraction :Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputPoint0":CIVector(CGPoint:point0),
            "inputPoint1":CIVector(CGPoint:point1),
            kCIInputRadiusKey:radius,
            "inputRefraction":refraction,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIGlassLozenge", withInputParameters:parameters)
        return filter.outputImage
    }
}

func holeDistortion(center: CGPoint, radius: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIHoleDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}

func lightTunnel(center: CGPoint, radius: Float, rotation:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            "inputRotation":rotation,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CILightTunnel", withInputParameters:parameters)
        return filter.outputImage
    }
}

func pinchDistortion(center: CGPoint, radius: Float, scale:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputScaleKey:scale,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIPinchDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}

func stretchCrop(size: CGSize, cropAmount: Float, centerStretchAmount: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputSize":CIVector(x: size.width, y: size.height),
            "inputCropAmount":cropAmount,
            "inputCenterStretchAmount":centerStretchAmount,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIStretchCrop", withInputParameters:parameters)
        return filter.outputImage
    }
}

func torusLensDistortion(center: CGPoint, radius: Float, width: Float, refraction: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputRadiusKey:radius,
            kCIInputWidthKey:width,
            "inputRefraction": refraction]
        let filter = CIFilter(name:"CITorusLensDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}

func twirlDistortion(center: CGPoint, radius: Float, angle:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputAngleKey:angle,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CITwirlDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}

func vortexDistortion(center: CGPoint, radius: Float, angle:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputAngleKey:angle,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CIVortexDistortion", withInputParameters:parameters)
        return filter.outputImage
    }
}

