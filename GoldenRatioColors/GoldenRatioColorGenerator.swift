//
//  GoldenRatioColorGenerator.swift
//  MKFoundation
//
//  Created by Mugunth Kumar on 30/4/16.
//  Copyright © 2016 Steinlogic Consulting and Training Lte Ltd. All rights reserved.
//

import CoreGraphics
import UIKit

var Conjugate: CGFloat = 0.618033988749895

public class GoldenRatioColorGenerator {
  var saturation: CGFloat
  var brightness: CGFloat
  var hue: CGFloat
  var alpha: CGFloat = 1
  
  init (saturation: CGFloat = 0.5, brightness: CGFloat = 0.5) {
    self.saturation = saturation
    self.brightness = brightness
    self.hue = CGFloat(drand48())

    var once = dispatch_once_t()
    dispatch_once(&once) {
      srand48(time(nil))
    }
  }

  public var nextColor: UIColor {
    hue += Conjugate
    if(hue > 1) {
      hue -= 1
    }
    return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
  }
}
