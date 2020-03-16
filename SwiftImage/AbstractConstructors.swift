//
//  AbstractConstructors.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/15/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

// MARK: - Abstract Filter Generators

func singularFilter(filterName: String) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputImageKey: image!
        ]
        let filter = CIFilter(name:filterName, parameters: parameters)!
        return filter.outputImage
    }
}

typealias Overlay = (CIImage) -> Filter

func overlayFilter(filterName: String) -> Overlay {
    return {overlay in
        return { image in
            let parameters : CIParameters = [
                kCIInputBackgroundImageKey: image!,
                kCIInputImageKey: overlay
            ]
            let filter = CIFilter(name:filterName, parameters: parameters)!
            return filter.outputImage
        }
    }
}

func radiusFilter(name: String) -> (_ radius: Float) -> Filter {
    return { radius in
        return { image in
            let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputImageKey: image!]
            let filter = CIFilter(name:name, parameters:parameters)!
            return filter.outputImage
        }
    }
}

func radiusIntensityFilter(name: String) -> (_ radius: Float, _ intensity :Float) -> Filter {
    return { radius, intensity in
        return { image in
            let parameters : CIParameters = [
                kCIInputRadiusKey:radius,
                kCIInputIntensityKey:intensity,
                kCIInputImageKey: image!]
            let filter = CIFilter(name:name, parameters:parameters)!
            return filter.outputImage
        }
    }
}

func centerRadiusFilter(name: String) -> (_ center :CGPoint, _ radius: Float) -> Filter {
    return { center, radius in
        return { image in
            let parameters : CIParameters = [
                kCIInputRadiusKey:radius,
                kCIInputCenterKey:CIVector(cgPoint:center),
                kCIInputImageKey: image!]
            let filter = CIFilter(name:name, parameters:parameters)!
            return filter.outputImage
        }
    }
}

func convolutionFixedFilter(name: String) -> (_ weights: CIVector, _ bias :Float) -> Filter {
    return { weights, bias in
        return { image in
            let parameters : CIParameters = [
                "inputWeights": weights,
                "inputBias": bias,
                kCIInputImageKey: image!
            ]
            let filter = CIFilter(name:name, parameters: parameters)!
            return filter.outputImage
        }
    }
}
