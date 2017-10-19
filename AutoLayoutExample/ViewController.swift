//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by Matt Dias on 12/11/16.
//  Copyright © 2016 Matt Dias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var imageWidthConstraint: NSLayoutConstraint!
	@IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!

	@IBOutlet weak var image: UIImageView!

	@IBAction func gearTapped(_ sender: Any) {
		self.imageWidthConstraint.constant *= 2
		self.imageHeightConstraint.constant *= 2

		let animation = CABasicAnimation(keyPath: #keyPath(CALayer.cornerRadius))
		animation.fromValue = image.layer.cornerRadius
		animation.toValue = image.layer.cornerRadius * 2
		animation.duration = 4
		image.layer.add(animation, forKey: "whatevs")
		self.image.layer.cornerRadius *= 2

		UIView.animate(withDuration: 4) {
			self.view.layoutIfNeeded()
		}

	}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

