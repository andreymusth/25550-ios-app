//
//  ViewController.swift
//  lifetime
//
//  Created by Andrey on 05/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var letsGoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyGradientBackground(rootView: self.view)
        setupButton()
        datePicker.alpha = 0
        letsGoButton.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5) {
            self.datePicker.alpha = 1.0
        }
        
        UIView.animate(withDuration: 1.5, delay: 1.0, options: [], animations: {
            self.letsGoButton.alpha = 1.0
        }, completion: nil)
    }
    
    func setupButton() {
        letsGoButton.layer.cornerRadius = CGFloat(letsGoButton.frame.size.height / 2)
    }
    
    @IBAction func showLifeProgress(_ sender: Any) {
        print("ЖЕНДОС УЧИ ПРОГРАММИРОВАНИЕ")
        let date = datePicker.date
        print(date)
    }
    
}

