//
//  CompositeFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

func additionCompositing(overlay: CIImage) -> Filter {return overlayWithName("CIAdditionCompositing")(overlay)}

func colorBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIColorBlendMode")(overlay)}

func colorBurnBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIColorBurnBlendMode")(overlay)}

func colorDodgeBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIColorDodgeBlendMode")(overlay)}

func darkenBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIDarkenBlendMode")(overlay)}

func differenceBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIDifferenceBlendMode")(overlay)}

func exclusionBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIExclusionBlendMode")(overlay)}

func hardLightBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIHardLightBlendMode")(overlay)}

func hueBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIHueBlendMode")(overlay)}

func lightenBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CILightenBlendMode")(overlay)}

func luminosityBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CILuminosityBlendMode")(overlay)}

func maximumCompositing(overlay: CIImage) -> Filter {return overlayWithName("CIMaximumCompositing")(overlay)}

func minimumCompositing(overlay: CIImage) -> Filter {return overlayWithName("CIMinimumCompositing")(overlay)}

func multiplyBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIMultiplyBlendMode")(overlay)}

func multiplyCompositing(overlay: CIImage) -> Filter {return overlayWithName("CIMultiplyCompositing")(overlay)}

func overlayBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIOverlayBlendMode")(overlay)}

func saturationBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CISaturationBlendMode")(overlay)}

func screenBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CIScreenBlendMode")(overlay)}

func softLightBlendMode(overlay: CIImage) -> Filter {return overlayWithName("CISoftLightBlendMode")(overlay)}

func sourceAtopCompositing(overlay: CIImage) -> Filter {return overlayWithName("CISourceAtopCompositing")(overlay)}

func sourceInCompositing(overlay: CIImage) -> Filter {return overlayWithName("CISourceInCompositing")(overlay)}

func sourceOutCompositing(overlay: CIImage) -> Filter {return overlayWithName("CISourceOutCompositing")(overlay)}

func sourceOverCompositing(overlay: CIImage) -> Filter {return overlayWithName("CISourceOverCompositing")(overlay)}
