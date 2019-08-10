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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        applyGradientBackground(rootView: self.view)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animate()
    }
    
    private func animate() {
        let originalTransform = self.pinImageView.transform
        let translatedTransform = originalTransform.translatedBy(x: 0.0, y: -250.0)
        UIView.animate(withDuration: 0.7, animations: {
            self.pinImageView.transform = translatedTransform
        })
    }

    @IBAction func settingsButtonClick(_ sender: Any) {
       dismiss(animated: false, completion: nil)
    }
}
