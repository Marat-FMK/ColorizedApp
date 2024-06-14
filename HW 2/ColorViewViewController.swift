//
//  ColorViewViewController.swift
//  HW 2
//
//  Created by Marat Fakhrizhanov on 14.06.2024.
//  Copyright © 2024 Alexey Efimov. All rights reserved.
//

import UIKit



protocol SettingsViewControllerDelegate {
    
    func setSuperViewColor (colorIndex: UIColor)
    
}

class ColorViewViewController: UIViewController {

    
    var currentSuperViewColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
      
        currentSuperViewColor = super.view.backgroundColor
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return}
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        settingsVC.delegate = self
        guard let colorTo = super.view.backgroundColor else { return }
        settingsVC.colorFromSuper = colorTo
        
    }

    
    
}

extension ColorViewViewController: SettingsViewControllerDelegate {
  
    
    func setSuperViewColor(colorIndex: UIColor) {
        super.view.backgroundColor = colorIndex
    }
    
}
