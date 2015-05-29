//
//  CardView.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

class CardView: UIView {

  var imageView = UIImageView(frame: CGRectZero)
  var avatarView = UIImageView(frame: CGRectZero)

  override init(frame: CGRect) {
    super.init(frame: frame)

    self.backgroundColor = UIColor.whiteColor()

    imageView.frame = CGRectMake(10, 10, self.frame.width - 20, self.frame.height - 40)
    imageView.image = UIImage(named: "meishi1.jpg")
    imageView.layer.shadowRadius = 2.0
    imageView.layer.shadowOpacity = 0.7
    imageView.layer.shadowColor = UIColor.whiteColor().CGColor
    self.addSubview(imageView)

    avatarView.frame = CGRectMake(0,0, 50,50)
    avatarView.center = CGPointMake(self.frame.width / 2.0, 25)
    avatarView.backgroundColor = UIColor.blueColor()
    avatarView.image = UIImage(named: "tom.jpg")
//    avatarView.layer.cornerRadius = 25.0
//    avatarView.layer.masksToBounds = true
//    avatarView.layer.borderWidth = 2
//    avatarView.layer.borderColor = UIColor.whiteColor().CGColor
//    avatarView.transform = CGAffineTransformMakeTranslation(0, -300)
    self.addSubview(avatarView)
    println("test is working.")

  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}
