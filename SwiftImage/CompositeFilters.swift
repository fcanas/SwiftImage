//
//  CompositeFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

public func additionCompositing   (overlay: CIImage) -> Filter {return overlayFilter("CIAdditionCompositing")   (overlay)}
public func colorBlendMode        (overlay: CIImage) -> Filter {return overlayFilter("CIColorBlendMode")        (overlay)}
public func colorBurnBlendMode    (overlay: CIImage) -> Filter {return overlayFilter("CIColorBurnBlendMode")    (overlay)}
public func colorDodgeBlendMode   (overlay: CIImage) -> Filter {return overlayFilter("CIColorDodgeBlendMode")   (overlay)}
public func darkenBlendMode       (overlay: CIImage) -> Filter {return overlayFilter("CIDarkenBlendMode")       (overlay)}
public func differenceBlendMode   (overlay: CIImage) -> Filter {return overlayFilter("CIDifferenceBlendMode")   (overlay)}
public func exclusionBlendMode    (overlay: CIImage) -> Filter {return overlayFilter("CIExclusionBlendMode")    (overlay)}
public func hardLightBlendMode    (overlay: CIImage) -> Filter {return overlayFilter("CIHardLightBlendMode")    (overlay)}
public func hueBlendMode          (overlay: CIImage) -> Filter {return overlayFilter("CIHueBlendMode")          (overlay)}
public func lightenBlendMode      (overlay: CIImage) -> Filter {return overlayFilter("CILightenBlendMode")      (overlay)}
public func luminosityBlendMode   (overlay: CIImage) -> Filter {return overlayFilter("CILuminosityBlendMode")   (overlay)}
public func maximumCompositing    (overlay: CIImage) -> Filter {return overlayFilter("CIMaximumCompositing")    (overlay)}
public func minimumCompositing    (overlay: CIImage) -> Filter {return overlayFilter("CIMinimumCompositing")    (overlay)}
public func multiplyBlendMode     (overlay: CIImage) -> Filter {return overlayFilter("CIMultiplyBlendMode")     (overlay)}
public func multiplyCompositing   (overlay: CIImage) -> Filter {return overlayFilter("CIMultiplyCompositing")   (overlay)}
public func overlayBlendMode      (overlay: CIImage) -> Filter {return overlayFilter("CIOverlayBlendMode")      (overlay)}
public func saturationBlendMode   (overlay: CIImage) -> Filter {return overlayFilter("CISaturationBlendMode")   (overlay)}
public func screenBlendMode       (overlay: CIImage) -> Filter {return overlayFilter("CIScreenBlendMode")       (overlay)}
public func softLightBlendMode    (overlay: CIImage) -> Filter {return overlayFilter("CISoftLightBlendMode")    (overlay)}
public func sourceAtopCompositing (overlay: CIImage) -> Filter {return overlayFilter("CISourceAtopCompositing") (overlay)}
public func sourceInCompositing   (overlay: CIImage) -> Filter {return overlayFilter("CISourceInCompositing")   (overlay)}
public func sourceOutCompositing  (overlay: CIImage) -> Filter {return overlayFilter("CISourceOutCompositing")  (overlay)}
public func sourceOverCompositing (overlay: CIImage) -> Filter {return overlayFilter("CISourceOverCompositing") (overlay)}
