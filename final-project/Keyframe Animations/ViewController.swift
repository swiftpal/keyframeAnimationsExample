//
//  ViewController.swift
//  Keyframe Animations
//
//  Created by Karan Pal on 23/01/22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var car: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    animateCar()
  }

  func animateCar() {
    UIView.animateKeyframes(withDuration: 2, delay: 0, animations: {
      UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.3) {
        self.car.center.x -= 60
        self.car.center.y -= 90
      }

      UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.1) {
        self.car.transform = CGAffineTransform(rotationAngle: .pi)
      }

      UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.3) {
        self.car.transform = CGAffineTransform(rotationAngle: .pi / 3)
      }

      UIView.addKeyframe(withRelativeStartTime: 0.35, relativeDuration: 0.7) {
        self.car.center.x += UIScreen.main.bounds.width - self.car.center.x + 60
        self.car.center.y -= 180
      }
    }, completion: nil)
  }
}
