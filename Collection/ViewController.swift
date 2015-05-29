//
//  ViewController.swift
//  Collection
//
//  Created by Sam Zhao on 28/05/2015.
//  Copyright (c) 2015 Sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  private var circleView = CircleView(frame: CGRectMake(0, 0, 100, 100))
//  private var cardView = CardView(frame: CGRectMake(0, 0, 375, 260))

  override func viewDidLoad() {
    super.viewDidLoad()

    circleView.center = CGPointMake(self.view.center.x, self.view.center.y + 200)
    self.view.addSubview(circleView)

//    self.view.addSubview(cardView)
    let bounds = CGRectMake(0, 0, 375, 260)
    for i in 1...3 {
      var cardView = CardView(frame: CGRectInset(bounds, CGFloat(i * 20), CGFloat(i * 20)))
      cardView.imageView.image = UIImage(named: "meishi\(i).jpg")
      cardView.center = CGPointMake(bounds.width / 2.0, bounds.height / 2.0 + CGFloat(i * 30))
      cardView.alpha = 1 - CGFloat( i)  * 0.1
      self.view.addSubview(cardView)
      self.view.sendSubviewToBack(cardView)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  override func viewWillAppear(animated: Bool) {
//    self.circleView.init(frame: CGRectMake(138, 289, 100, 100))
  }
  
  @IBAction func animateButtonPressed(sender: AnyObject) {
    circleView.startLoadNumber(num: 59)
  }
}
