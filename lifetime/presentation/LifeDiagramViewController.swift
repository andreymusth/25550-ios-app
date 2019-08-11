//
//  LifeDiagramViewController.swift
//  lifetime
//
//  Created by Andrey on 10/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import UIKit

class LifeDiagramViewController: UIViewController {

    @IBOutlet weak var pinImageView: UIImageView!
    private lazy var screenWidth = UIScreen.main.bounds.width
    
    override func viewDidLoad() {
        super.viewDidLoad()

        applyGradientBackground(rootView: self.view)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animate()
    }
    
    private func animate() {
        
        let animatedWidth = screenWidth * 0.75
        
        let originalTransform = self.pinImageView.transform
        let translatedTransform = originalTransform.translatedBy(x: animatedWidth, y: 0.0)
        UIView.animate(withDuration: 0.7, animations: {
            self.pinImageView.transform = translatedTransform
        })
    }

    @IBAction func settingsButtonClick(_ sender: Any) {
       
    }
}
