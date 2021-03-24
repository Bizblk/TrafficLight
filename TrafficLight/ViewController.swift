//
//  ViewController.swift
//  TrafficLight
//
//  Created by Виталий Оранский on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    // MARK: - Private Properties
    private let dark: CGFloat = 0.3
    private let light: CGFloat = 1
    
    // MARK: - Life Cyles Methods
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = dark
        yellowView.alpha = dark
        greenView.alpha = dark
        startButton.layer.cornerRadius = 15
    }
    
    // MARK: - IB Actions
    @IBAction func actionButton(_ sender: UIButton) {
        
        if greenView.alpha == light {
            startButton.setTitle("Start", for: .normal)
            greenView.alpha = dark
        } else if redView.alpha == yellowView.alpha {
            redView.alpha = light
            greenView.alpha = dark
            startButton.setTitle("Red", for: .normal)
        } else if redView.alpha == light {
            yellowView.alpha = light
            redView.alpha = dark
            startButton.setTitle("Yellow", for: .normal)
        } else if yellowView.alpha == light {
            greenView.alpha = light
            yellowView.alpha = dark
            startButton.setTitle("Green", for: .normal)
        }
    }
    
}

