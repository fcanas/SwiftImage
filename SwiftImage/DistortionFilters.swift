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