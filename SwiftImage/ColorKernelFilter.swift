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
        return CIColorKernel(string: self.kernelString)
        }()
    
    var inputImage :CIImage?
    
    init(kernel: String) {
        kernelString = kernel
        super.init()
    }
    
    required public init(coder aDecoder: NSCoder) {
        kernelString = ""
        super.init(coder: aDecoder)
        if let k = aDecoder.decodeObjectForKey("SwiftImageKernelStringKey") as? String {
            kernelString = k
        }
    }
    
    override public func encodeWithCoder(aCoder: NSCoder) {
        super.encodeWithCoder(aCoder)
        aCoder.encodeObject(kernelString, forKey: "SwiftImageKernelStringKey")
    }
    
    func outputImage() -> CIImage? {
        if inputImage == nil {
            return nil
        }
        return kernel.applyWithExtent(inputImage!.extent(), arguments: [inputImage!])
    }
}

