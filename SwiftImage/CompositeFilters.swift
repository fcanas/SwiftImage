//
//  CompositeFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

func additionCompositing   (overlay: CIImage) -> Filter {return overlayFilter("CIAdditionCompositing")   (overlay)}
func colorBlendMode        (overlay: CIImage) -> Filter {return overlayFilter("CIColorBlendMode")        (overlay)}
func colorBurnBlendMode    (overlay: CIImage) -> Filter {return overlayFilter("CIColorBurnBlendMode")    (overlay)}
func colorDodgeBlendMode   (overlay: CIImage) -> Filter {return overlayFilter("CIColorDodgeBlendMode")   (overlay)}
func darkenBlendMode       (overlay: CIImage) -> Filter {return overlayFilter("CIDarkenBlendMode")       (overlay)}
func differenceBlendMode   (overlay: CIImage) -> Filter {return overlayFilter("CIDifferenceBlendMode")   (overlay)}
func exclusionBlendMode    (overlay: CIImage) -> Filter {return overlayFilter("CIExclusionBlendMode")    (overlay)}
func hardLightBlendMode    (overlay: CIImage) -> Filter {return overlayFilter("CIHardLightBlendMode")    (overlay)}
func hueBlendMode          (overlay: CIImage) -> Filter {return overlayFilter("CIHueBlendMode")          (overlay)}
func lightenBlendMode      (overlay: CIImage) -> Filter {return overlayFilter("CILightenBlendMode")      (overlay)}
func luminosityBlendMode   (overlay: CIImage) -> Filter {return overlayFilter("CILuminosityBlendMode")   (overlay)}
func maximumCompositing    (overlay: CIImage) -> Filter {return overlayFilter("CIMaximumCompositing")    (overlay)}
func minimumCompositing    (overlay: CIImage) -> Filter {return overlayFilter("CIMinimumCompositing")    (overlay)}
func multiplyBlendMode     (overlay: CIImage) -> Filter {return overlayFilter("CIMultiplyBlendMode")     (overlay)}
func multiplyCompositing   (overlay: CIImage) -> Filter {return overlayFilter("CIMultiplyCompositing")   (overlay)}
func overlayBlendMode      (overlay: CIImage) -> Filter {return overlayFilter("CIOverlayBlendMode")      (overlay)}
func saturationBlendMode   (overlay: CIImage) -> Filter {return overlayFilter("CISaturationBlendMode")   (overlay)}
func screenBlendMode       (overlay: CIImage) -> Filter {return overlayFilter("CIScreenBlendMode")       (overlay)}
func softLightBlendMode    (overlay: CIImage) -> Filter {return overlayFilter("CISoftLightBlendMode")    (overlay)}
func sourceAtopCompositing (overlay: CIImage) -> Filter {return overlayFilter("CISourceAtopCompositing") (overlay)}
func sourceInCompositing   (overlay: CIImage) -> Filter {return overlayFilter("CISourceInCompositing")   (overlay)}
func sourceOutCompositing  (overlay: CIImage) -> Filter {return overlayFilter("CISourceOutCompositing")  (overlay)}
func sourceOverCompositing (overlay: CIImage) -> Filter {return overlayFilter("CISourceOverCompositing") (overlay)}
