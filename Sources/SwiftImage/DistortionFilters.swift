//
//  DistortionFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

public func bumpDistortion(center: CGPoint, radius: Float, scale: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputScaleKey:scale,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIBumpDistortion", parameters:parameters)!
        return filter.outputImage
    }
}

public func bumpDistortionLinear(center: CGPoint, radius: Float, angle:Float, scale: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputAngleKey:angle,
            kCIInputScaleKey:scale,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIBumpDistortionLinear", parameters:parameters)!
        return filter.outputImage
    }
}

public func circleSplashDistortion(center: CGPoint, radius: Float) -> Filter {
    return centerRadiusFilter(name: "CICircleSplashDistortion")(center, radius)
}

public func circularWrap(center: CGPoint, radius: Float, angle:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputAngleKey:angle,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CICircularWrap", parameters:parameters)!
        return filter.outputImage
    }
}

public func droste(insertionPoint0: CGPoint, insertionPoint1: CGPoint, strands: Float, periodicity :Float, rotation :Float, zoom :Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputInsertionPoint0":CIVector(cgPoint: insertionPoint0),
            "inputInsertionPoint1":CIVector(cgPoint: insertionPoint1),
            "inputStrands":strands,
            "inputPeriodicity":periodicity,
            "inputRotation":rotation,
            "inputZoom":zoom,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIDroste", parameters:parameters)!
        return filter.outputImage
    }
}

public func displacementDistortion(displacementImage: CIImage, scale :Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputDisplacementImage":displacementImage,
            kCIInputScaleKey:scale,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIDisplacementDistortion", parameters:parameters)!
        return filter.outputImage
    }
}

public func glassDistortion(texture: CIImage, center: CGPoint, scale :Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputTexture":texture,
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputScaleKey:scale,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIGlassDistortion", parameters:parameters)!
        return filter.outputImage
    }
}

public func glassLozenge(point0: CGPoint, point1: CGPoint, radius :Float, refraction :Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputPoint0":CIVector(cgPoint:point0),
            "inputPoint1":CIVector(cgPoint:point1),
            kCIInputRadiusKey:radius,
            "inputRefraction":refraction,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIGlassLozenge", parameters:parameters)!
        return filter.outputImage
    }
}

public func holeDistortion(center: CGPoint, radius: Float) -> Filter {
    return centerRadiusFilter(name: "CIHoleDistortion")(center, radius)
}

public func lightTunnel(center: CGPoint, radius: Float, rotation:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(cgPoint:center),
            "inputRotation":rotation,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CILightTunnel", parameters:parameters)!
        return filter.outputImage
    }
}

public func pinchDistortion(center: CGPoint, radius: Float, scale:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputScaleKey:scale,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIPinchDistortion", parameters:parameters)!
        return filter.outputImage
    }
}

func stretchCrop(size: CGSize, cropAmount: Float, centerStretchAmount: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputSize":CIVector(x: size.width, y: size.height),
            "inputCropAmount":cropAmount,
            "inputCenterStretchAmount":centerStretchAmount,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIStretchCrop", parameters:parameters)!
        return filter.outputImage
    }
}

public func torusLensDistortion(center: CGPoint, radius: Float, width: Float, refraction: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputRadiusKey:radius,
            kCIInputWidthKey:width,
            "inputRefraction": refraction]
        let filter = CIFilter(name:"CITorusLensDistortion", parameters:parameters)!
        return filter.outputImage
    }
}

public func twirlDistortion(center: CGPoint, radius: Float, angle:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputAngleKey:angle,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CITwirlDistortion", parameters:parameters)!
        return filter.outputImage
    }
}

public func vortexDistortion(center: CGPoint, radius: Float, angle:Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputRadiusKey:radius,
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputAngleKey:angle,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIVortexDistortion", parameters:parameters)!
        return filter.outputImage
    }
}

