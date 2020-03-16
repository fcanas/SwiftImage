//
//  CompositeFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

public func additionCompositing   (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIAdditionCompositing")   (overlay)}
public func colorBlendMode        (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIColorBlendMode")        (overlay)}
public func colorBurnBlendMode    (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIColorBurnBlendMode")    (overlay)}
public func colorDodgeBlendMode   (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIColorDodgeBlendMode")   (overlay)}
public func darkenBlendMode       (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIDarkenBlendMode")       (overlay)}
public func differenceBlendMode   (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIDifferenceBlendMode")   (overlay)}
public func exclusionBlendMode    (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIExclusionBlendMode")    (overlay)}
public func hardLightBlendMode    (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIHardLightBlendMode")    (overlay)}
public func hueBlendMode          (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIHueBlendMode")          (overlay)}
public func lightenBlendMode      (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CILightenBlendMode")      (overlay)}
public func luminosityBlendMode   (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CILuminosityBlendMode")   (overlay)}
public func maximumCompositing    (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIMaximumCompositing")    (overlay)}
public func minimumCompositing    (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIMinimumCompositing")    (overlay)}
public func multiplyBlendMode     (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIMultiplyBlendMode")     (overlay)}
public func multiplyCompositing   (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIMultiplyCompositing")   (overlay)}
public func overlayBlendMode      (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIOverlayBlendMode")      (overlay)}
public func saturationBlendMode   (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CISaturationBlendMode")   (overlay)}
public func screenBlendMode       (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CIScreenBlendMode")       (overlay)}
public func softLightBlendMode    (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CISoftLightBlendMode")    (overlay)}
public func sourceAtopCompositing (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CISourceAtopCompositing") (overlay)}
public func sourceInCompositing   (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CISourceInCompositing")   (overlay)}
public func sourceOutCompositing  (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CISourceOutCompositing")  (overlay)}
public func sourceOverCompositing (overlay: CIImage) -> Filter {return overlayFilter(filterName: "CISourceOverCompositing") (overlay)}
