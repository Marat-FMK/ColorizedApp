//
//  ViewController.swift
//  HW 2
//
//  Created by Alexey Efimov on 12.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var delegate: SettingsViewControllerDelegate!
    
    var colorFromSuper:UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        colorView.backgroundColor = colorFromSuper
    }
    
    @IBAction func doneButtonPressed() {
       
        delegate.setSuperViewColor(colorIndex: colorView.backgroundColor ?? UIColor(
            red: 0.5, green: 0.1, blue: 0.5, alpha: 1))
        dismiss(animated: true)
    }
    
    
   
    

}
