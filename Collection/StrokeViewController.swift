//
//  StrokeViewController.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

class StrokeViewController: UIViewController {
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
    rectShape.path = UIBezierPath(ovalInRect: rectShape.bounds).CGPath
    rectShape.lineWidth = 4.0
    rectShape.strokeColor = UIColor.blueColor().CGColor
    rectShape.fillColor = UIColor.clearColor().CGColor
    rectShape.strokeStart = 0
    rectShape.strokeEnd = 0.2

    let start = CABasicAnimation(keyPath: "strokeStart")
    start.toValue = 0.7
    let end = CABasicAnimation(keyPath: "strokeEnd")
    end.toValue = 1

    let group = CAAnimationGroup()
    group.animations = [start,end]
    group.duration = 1.5
    group.autoreverses = true
    group.repeatCount = HUGE
    rectShape.addAnimation(group, forKey: nil)
  }
}
