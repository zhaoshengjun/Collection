//
//  SliderLabelContainer.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

enum SliderLabelContainerType {
  case SingleDigitType
  case TensDigitType
}

class SliderLabelContainer: UIView {

  private var singleDigitScroll: UIScrollView!
  private var scrollType = SliderLabelContainerType.SingleDigitType

  init(frame: CGRect, type: SliderLabelContainerType) {
    super.init(frame: frame)

    scrollType = type
    singleDigitScroll = UIScrollView(frame: frame)
    singleDigitScroll.contentSize = CGSizeMake(self.bounds.width, self.bounds.width * 10.0)
    for i in 0...10 {
      var label = UILabel(frame: CGRectMake(0, self.bounds.height * CGFloat(i), self.bounds.width, self.bounds.height))
      label.text = "\(i)"
      label.textAlignment = NSTextAlignment.Center
      label.font = UIFont.boldSystemFontOfSize(30)
      label.textColor = UIColor.whiteColor()
      singleDigitScroll.addSubview(label)
    }
    self.addSubview(singleDigitScroll)
  }

  func scrollToNum(number: Int) {
    if scrollType == .SingleDigitType {
//      UIView.animateWithDuration(0.85, animations: {
//        self.singleDigitScroll.contentOffset = CGPointMake(0, self.bounds.height * CGFloat(number))
//      })
      UIView.animateWithDuration(0.85, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.2, options: .CurveEaseInOut, animations: {
        self.singleDigitScroll.contentOffset = CGPointMake(0, self.bounds.height * CGFloat(number))
      }, completion: nil)
    } else {
//      UIView.animateWithDuration(Double(1), animations: {
//        self.singleDigitScroll.contentOffset = CGPointMake(0, self.bounds.height * CGFloat(number))
//      })
      UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.2, options: .CurveEaseInOut, animations: {
        self.singleDigitScroll.contentOffset = CGPointMake(0, self.bounds.height * CGFloat(number))
        }, completion: nil)

    }
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

}