//
//  CircleView.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

class CircleView: UIView {
  var progressLayer: CAShapeLayer = CAShapeLayer()
  var passesLabel:UILabel = UILabel(frame: CGRectMake(15, 64, 60, 20))
  var tensSliderContainer:SliderLabelContainer = SliderLabelContainer(frame: CGRectMake(8, 8, 20, 45), type: .TensDigitType)
  var singleSliderContainer:SliderLabelContainer = SliderLabelContainer(frame: CGRectMake(32, 8, 20, 45), type: .SingleDigitType)

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = UIColor.clearColor()


    progressLayer.lineWidth = 2
    progressLayer.fillColor = UIColor.clearColor().CGColor
    progressLayer.strokeColor = UIColor.whiteColor().CGColor
    self.layer.addSublayer(progressLayer)

    passesLabel.font = UIFont.systemFontOfSize(17)
    passesLabel.text = "PASSES"
    passesLabel.textColor = UIColor.whiteColor()
    passesLabel.center = CGPointMake(CGRectGetWidth(self.bounds)/2.0, CGRectGetHeight(self.bounds)/2+20.0)
    passesLabel.textAlignment = NSTextAlignment.Center
    passesLabel.sizeToFit()
    self.addSubview(passesLabel)

    self.addSubview(singleSliderContainer)

    self.addSubview(tensSliderContainer)

  }

  func startLoadNumber(num:Int = 99){
    var tensDigit:Int = num/10
    var singleDigit:Int = num%10

    tensSliderContainer.scrollToNum(tensDigit)
    singleSliderContainer.scrollToNum(singleDigit)

    startDrawCircleAnimation()
  }

  override func layoutSubviews() {

    var radius:CGFloat = CGRectGetWidth(self.bounds)/2.0
    var center = CGPointMake(radius, radius)
    var startAngle = -M_PI_2
    var endAngle = M_PI_2*3.0
    var circlePath = UIBezierPath(arcCenter: center, radius: radius, startAngle: CGFloat(startAngle), endAngle: CGFloat(endAngle), clockwise: true)
    progressLayer.path = circlePath.CGPath
  }

  func startDrawCircleAnimation(){
    var pathAnimation:CABasicAnimation = CABasicAnimation(keyPath: "strokeEnd")
    pathAnimation.fromValue = 0
    pathAnimation.toValue = 1
    pathAnimation.duration = 0.5
    progressLayer.addAnimation(pathAnimation, forKey: "pathAnimation")
  }

  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}