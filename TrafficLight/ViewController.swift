//
//  ViewController.swift
//  TrafficLight
//
//  Created by Вячеслав Горбатенко on 22.10.2022.
//

import UIKit

var currentLightView: UIView?

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    
    @IBOutlet var yellowLightView: UIView!
    
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var toggleButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
                        
        redLightView.layer.cornerRadius = 0.5 * redLightView.bounds.height
        yellowLightView.layer.cornerRadius = 0.5 * yellowLightView.bounds.height
        greenLightView.layer.cornerRadius = 0.5 * greenLightView.bounds.height
        
        redLightView.alpha = 0.35
        yellowLightView.alpha = 0.35
        greenLightView.alpha = 0.35
        
        toggleButton.layer.cornerRadius = 15
    }
        
    @IBAction func toggleLights() {
        
        toggleButton.setTitle(
            "Next light",
            for: .normal
        )
        
        switch currentLightView {
        case yellowLightView:
            redLightView.alpha = 0.35;
            yellowLightView.alpha = 1;
            greenLightView.alpha = 0.35;
            currentLightView = greenLightView
        case greenLightView:
            redLightView.alpha = 0.35;
            yellowLightView.alpha = 0.35;
            greenLightView.alpha = 1;
            currentLightView = redLightView
        default:
            redLightView.alpha = 1;
            yellowLightView.alpha = 0.35;
            greenLightView.alpha = 0.35;
            currentLightView = yellowLightView
        }
    }
}
