//
//  ViewController.swift
//  GoldenRatioColors
//
//  Created by Mugunth Kumar on 30/4/16.
//  Copyright © 2016 Steinlogic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  private var goldenRatioColorGenerator = GoldenRatioColorGenerator(saturation: 0.3, brightness:0.7)
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = goldenRatioColorGenerator.nextColor
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func nextColorAction(sender: AnyObject) {
    view.backgroundColor = goldenRatioColorGenerator.nextColor
  }

}

