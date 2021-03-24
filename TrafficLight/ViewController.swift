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
    
    
    
       override func viewWillLayoutSubviews() {
           super.viewWillLayoutSubviews()
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.layer.cornerRadius = greenView.frame.size.width / 2

    //    redView.clipsToBounds = true
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
     //   redView.layer.cornerRadius = redView.frame.size.width / 2
        //redView.clipsToBounds = true
        yellowView.alpha = 0.3
      //  yellowView.layer.cornerRadius = 50
        greenView.alpha = 0.3
      //  greenView.layer.cornerRadius = 50
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

