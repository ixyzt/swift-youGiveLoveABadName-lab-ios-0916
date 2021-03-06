//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bonjoviImageView: UIImageView!
    
    var animSwitch = true

    override func viewDidLoad() {
        super.viewDidLoad()
        self.bonjoviImageView.translatesAutoresizingMaskIntoConstraints = false
        self.bonjoviImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        self.bonjoviImageView.translatesAutoresizingMaskIntoConstraints = false
        switch animSwitch {
        case true:
            UIView.animateKeyframes(withDuration: 0.3, delay: 0.0, options: .calculationModeLinear, animations: {
                UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: {
                    print("Forward")
                    self.bonjoviImageView.transform = CGAffineTransform(scaleX: 1.0, y: 0.8)
                    self.view.layoutIfNeeded()
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.5, animations: {
                    self.bonjoviImageView.transform = CGAffineTransform(scaleX: 1.0, y: 3.0)
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                    self.bonjoviImageView.transform = CGAffineTransform(scaleX: 1.0, y: 2.4)
                })
                
                }, completion: nil)
            animSwitch = false
        default:
            UIView.animateKeyframes(withDuration: 0.3, delay: 0.0, options: .calculationModeLinear, animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                    self.bonjoviImageView.transform = CGAffineTransform(scaleX: 1.0, y: 3.0)
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.5, animations: {
                    print("Reverse")
                    self.bonjoviImageView.transform = CGAffineTransform(scaleX: 1.0, y: 0.8)
                    self.view.layoutIfNeeded()
                })
                
                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                    self.bonjoviImageView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                })
                
                }, completion: nil)
            animSwitch = true
        }
    }

}

