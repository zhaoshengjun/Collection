//
//  ViewController.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

class RoundedCornersViewController: UIViewController {

  private var rectShape1: CAShapeLayer = CAShapeLayer()
  private var rectShape2: CAShapeLayer = CAShapeLayer()
  private var rectShape3: CAShapeLayer = CAShapeLayer()


  override func viewDidAppear(animated: Bool) {

    rectShape1.backgroundColor = UIColor.redColor().CGColor
    rectShape1.cornerRadius = 20.0

    rectShape2.fillColor = UIColor.blueColor().CGColor
    rectShape2.path = UIBezierPath(roundedRect: rectShape2.bounds, cornerRadius: 20).CGPath

    rectShape3.fillColor = UIColor.greenColor().CGColor
    rectShape3.path = UIBezierPath(roundedRect: rectShape3.bounds, byRoundingCorners: .BottomLeft | .TopRight, cornerRadii: CGSize(width: 20, height: 20)).CGPath
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    rectShape1.frame = CGRectMake(100, 100, 120, 120)
    rectShape2.frame = CGRectMake(100, 250, 120, 120)
    rectShape3.frame = CGRectMake(100, 400, 120, 120)

    self.view.layer.addSublayer(rectShape1)
    self.view.layer.addSublayer(rectShape2)
    self.view.layer.addSublayer(rectShape3)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

