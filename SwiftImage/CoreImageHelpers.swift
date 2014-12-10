//
//  CoreImageHelpers.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/11/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import CoreImage

public typealias Filter = CIImage -> CIImage

public typealias CIParameters = Dictionary<String, AnyObject>

func gaussianBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIGaussianBlur", withInputParameters:parameters)
        return filter.outputImage
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

infix operator ~~> { associativity left }

func ~~> (filter1: Filter, filter2: Filter) -> Filter {
    return { img in filter2(filter1(img)) }
}
