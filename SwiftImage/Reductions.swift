//
//  Reductions.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

private func extentFilter(name: String) -> (extent: CGRect) -> Filter {
    return { extent in
        return { image in
            let parameters : CIParameters = [
                "inputExtent":CIVector(CGRect:extent),
                kCIInputImageKey: image]
            let filter = CIFilter(name:"CIAreaAverage", withInputParameters:parameters)
            return filter.outputImage
        }
    }
}

public func areaAverage(extent: CGRect) -> Filter { return extentFilter("CIAreaAverage")(extent:extent)}

public func areaHistogram(extent: CGRect, count: Int, scale: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputExtent":CIVector(CGRect:extent),
            kCIInputImageKey: image,
            "inputCount": count,
            "inputScale": scale
        ]
        let filter = CIFilter(name:"CIAreaHistogram", withInputParameters:parameters)
        return filter.outputImage
    }
}

public func rowAverage(extent: CGRect) -> Filter {return extentFilter("CIRowAverage")(extent:extent)}

public func columnAverage(extent: CGRect) -> Filter {return extentFilter("CIColumnAverage")(extent:extent)}

public func histogramDisplayFilter(height: Float, highLimit: Float, lowLimit: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            "inputHighLimit":highLimit,
            "inputLowLimit":lowLimit,
            "inputHeight": height,
            kCIInputImageKey: image,
        ]
        let filter = CIFilter(name:"CIHistogramDisplayFilter", withInputParameters:parameters)
        return filter.outputImage
    }
}

public func areaMaximum(extent: CGRect) -> Filter {return extentFilter("CIAreaMaximum")(extent:extent)}

public func areaMinimum(extent: CGRect) -> Filter {return extentFilter("CIAreaMinimum")(extent:extent)}

public func areaMaximumAlpha(extent: CGRect) -> Filter {return extentFilter("CIAreaMaximumAlpha")(extent:extent)}

public func areaMinimumAlpha(extent: CGRect) -> Filter {return extentFilter("CIAreaMinimumAlpha")(extent:extent)}

