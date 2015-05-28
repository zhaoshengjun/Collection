//
//  PathViewController.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

class PathViewController: UIViewController {
  private var rectShape = CAShapeLayer()

  override func viewDidLoad() {
    super.viewDidLoad()

    rectShape.frame = CGRectMake(138, 289, 100, 100)
    self.view.layer.addSublayer(rectShape)

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  override func viewDidAppear(animated: Bool) {
//    rectShape.backgroundColor = UIColor.yellowColor().CGColor

    rectShape.fillColor = UIColor.yellowColor().CGColor

    let startShape = UIBezierPath(roundedRect: rectShape.bounds, cornerRadius: 50).CGPath
    let endShape = UIBezierPath(roundedRect: CGRectMake(-450, -450, 1000, 1000), cornerRadius: 50).CGPath

    rectShape.path = startShape

    let animation = CABasicAnimation(keyPath: "path")
    animation.toValue = endShape
    animation.duration = 1
    animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
    animation.fillMode = kCAFillModeBoth
    animation.removedOnCompletion = false

    rectShape.addAnimation(animation, forKey: "path")
  }
}
