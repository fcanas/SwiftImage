//
//  ColorKernelFilter.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/21/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import CoreImage

public class ColorKernelFilter: CIFilter {
    var kernelString :String
    lazy var kernel :CIColorKernel = {
        return CIColorKernel(source: self.kernelString)!
        }()
    
    var inputImage :CIImage?

    // TODO: Deprecate after iOS 12
    init(kernel: String) {
        kernelString = kernel
        super.init()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        kernelString = ""
        super.init(coder: aDecoder)
        if let k = aDecoder.decodeObject(forKey: "SwiftImageKernelStringKey") as? String {
            kernelString = k
        }
    }
    
    override public func encode(with aCoder: NSCoder) {
        super.encode(with: aCoder)
        aCoder.encode(kernelString, forKey: "SwiftImageKernelStringKey")
    }
    
    func outputImage() -> CIImage? {
        if inputImage == nil {
            return nil
        }
        return kernel.apply(extent: inputImage!.extent, arguments: [inputImage!])
    }
}

