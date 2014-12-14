//
//  CompositeFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

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

func additionCompositing(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIAdditionCompositing", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func colorBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIColorBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func colorBurnBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIColorBurnBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func colorDodgeBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIColorDodgeBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func darkenBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIDarkenBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func differenceBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIDifferenceBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func exclusionBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIExclusionBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func hardLightBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIHardLightBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func hueBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIHueBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func lightenBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CILightenBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func luminosityBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CILuminosityBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func maximumCompositing(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIMaximumCompositing", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func minimumCompositing(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIMinimumCompositing", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func multiplyBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIMultiplyBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func multiplyCompositing(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIMultiplyCompositing", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func overlayBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIOverlayBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func saturationBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CISaturationBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func screenBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIScreenBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func softLightBlendMode(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CISoftLightBlendMode", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func sourceAtopCompositing(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CISourceAtopCompositing", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func sourceInCompositing(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CISourceInCompositing", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
    }
}

func sourceOutCompositing(overlay: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CISourceOutCompositing", withInputParameters: parameters)
        return filter.outputImage.imageByCroppingToRect(image.extent())
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

