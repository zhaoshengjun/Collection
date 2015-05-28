//
//  LineWidthViewController.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//


import UIKit

class LineWidthViewController: UIViewController {
  private var rectShape = CAShapeLayer()

  override func viewDidLoad() {
    super.viewDidLoad()

//    rectShape.frame = CGRectMake(138, 289, 100, 100)
    self.view.layer.addSublayer(rectShape)

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  override func viewDidAppear(animated: Bool) {
    let rect = CGRectMake(0, 0, view.bounds.width, 1)
    rectShape.bounds = rect
    rectShape.position = view.center
    rectShape.path = UIBezierPath(rect: rect).CGPath

    rectShape.lineWidth = 10
    rectShape.strokeColor = UIColor.blueColor().CGColor

    let animation = CABasicAnimation(keyPath: "lineWidth")
    animation.toValue = 1000
    animation.duration = 1
    animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
    animation.fillMode = kCAFillModeBoth
    animation.removedOnCompletion = false
    rectShape.addAnimation(animation, forKey: "lineWidth")
  }
}
