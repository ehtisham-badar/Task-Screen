//
//  ViewController.swift
//  Task
//
//  Created by Ehtisham Badar on 16/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblMusic: UILabel!
    @IBOutlet weak var tabView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabView.layer.cornerRadius = 16
        tabView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        if let textWidth = lblMusic.text?.size(withAttributes: [.font: lblMusic.font!]).width {
                    if textWidth > lblMusic.frame.width {
                        // Calculate the duration for the animation based on the text length
                        let duration = TimeInterval(textWidth / 50) // Adjust the divisor for desired speed
                        
                        // Create a CABasicAnimation to move the label's text from right to left
                        let animation = CABasicAnimation(keyPath: "position.x")
                        animation.fromValue = lblMusic.layer.position.x + textWidth
                        animation.toValue = lblMusic.layer.position.x - lblMusic.frame.width
                        animation.duration = duration
                        animation.repeatCount = .infinity
                        lblMusic.layer.add(animation, forKey: "textAnimation")
                    }
                }
    }
    
}

