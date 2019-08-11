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
    @IBOutlet weak var lifelineImageVIew: UIImageView!
    
    var birthDate: Date? = nil
    private lazy var prefRepo: PreferencesRepository = PreferencesRepositoryImpl()
    private lazy var lifeTimeCalc: LifetimeCalculator = LifetimeCalculatorImpl()
    private lazy var lifetime = lifeTimeCalc.getLeftTime(birthDate: self.birthDate!)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        applyGradientBackground(rootView: self.view)
        if (birthDate == nil) {
            birthDate = prefRepo.getBirthdate()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animate()
    }
    
    private func animate() {
        let lifelineWidth = lifelineImageVIew.bounds.width
        let animatedWidth = Float(lifelineWidth) * lifetime.daysLivedPercent
        
        let originalTransform = self.pinImageView.transform
        let translatedTransform = originalTransform.translatedBy(x: CGFloat(animatedWidth), y: 0.0)
        UIView.animate(withDuration: 0.7, animations: {
            self.pinImageView.transform = translatedTransform
        })
    }

    @IBAction func settingsButtonClick(_ sender: Any) {
       
    }
}
