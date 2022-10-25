//
//  ViewController.swift
//  TrafficLight
//
//  Created by Вячеслав Горбатенко on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var toggleButton: UIButton!
    
    private var currentLightView: UIView?
    
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1
        
    override func viewDidLoad() {
        super.viewDidLoad()
                
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        toggleButton.layer.cornerRadius = 15
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = 0.5 * redLightView.bounds.height
        yellowLightView.layer.cornerRadius = 0.5 * yellowLightView.bounds.height
        greenLightView.layer.cornerRadius = 0.5 * greenLightView.bounds.height
    }
        
    @IBAction func toggleLights() {
        
        toggleButton.setTitle(
            "Next light",
            for: .normal
        )
        
        switch currentLightView {
        case yellowLightView:
            redLightView.alpha = lightIsOff;
            yellowLightView.alpha = lightIsOn;
            currentLightView = greenLightView
        case greenLightView:
            yellowLightView.alpha = lightIsOff;
            greenLightView.alpha = lightIsOn;
            currentLightView = redLightView
        default:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn;
            currentLightView = yellowLightView
        }
    }
}
