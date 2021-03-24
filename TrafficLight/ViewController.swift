//
//  ViewController.swift
//  TrafficLight
//
//  Created by Виталий Оранский on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        redView.layer.cornerRadius = 45
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = 45
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = 45
        startButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: UIButton) {
        
        if redView.alpha == yellowView.alpha {
            redView.alpha = 1
            greenView.alpha = 0.3
            startButton.setTitle("Red", for: .normal)
        } else if redView.alpha == 1 {
            yellowView.alpha = 1
            redView.alpha = 0.3
            startButton.setTitle("Yellow", for: .normal)
        } else if yellowView.alpha == 1 {
            greenView.alpha = 1
            yellowView.alpha = 0.3
            startButton.setTitle("Green", for: .normal)
        }
    }
    
}

