//
//  LayerViewController.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

class LayerViewController: UIViewController {
  private var layerView = UIView(frame: CGRectMake(100, 100, 200, 200))
  private var layer: CALayer {
    return layerView.layer
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.addSubview(layerView)
    setupLayer()
  }

  func setupLayer() {
    layer.backgroundColor = UIColor.blueColor().CGColor
    layer.borderWidth = 50.0
    layer.borderColor = UIColor.redColor().CGColor
    layer.shadowOpacity = 0.7
    layer.shadowRadius = 10.0
  }
}