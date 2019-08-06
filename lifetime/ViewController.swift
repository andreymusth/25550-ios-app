//
//  ViewController.swift
//  lifetime
//
//  Created by Andrey on 05/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        applyGradientBackground(rootView: self.view)
    }
    
    @IBAction func showLifeProgress(_ sender: Any) {
        print("ЖЕНДОС УЧИ ПРОГРАММИРОВАНИЕ")
        let date = selectedDate.date
        print(date)
    }
    
}

