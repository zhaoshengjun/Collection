//
//  CardView.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

class CardView: UIView {

  private var imageView = UIImageView()

  override init(frame: CGRect) {
    super.init(frame: frame)

    self.backgroundColor = UIColor.whiteColor()

    imageView.frame = CGRectMake(0, 10, self.frame.width, self.frame.height)
    imageView.image = UIImage(named: "meishi1")

    self.addSubview(imageView)

  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}
