//
//  ViewController.swift
//  HW 2
//
//  Created by Alexey Efimov on 12.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var redTF: UITextField!
    
    
    
    
    @IBOutlet var colorView: UIView!
    
    var delegate: SettingsViewControllerDelegate!
    
    var colorFromSuper:UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        colorView.backgroundColor = colorFromSuper
        getValuesFromView()
        presentSliderValuesInTextFieldAndLabels()
    }
    
    
    @IBAction func rgbSlidersTriggered() {
        
        colorView.backgroundColor = UIColor( red: CGFloat((redSlider.value)),
                                             green: CGFloat(greenSlider.value),
                                             blue: CGFloat(blueSlider.value),
                                             alpha: 1 )
        presentSliderValuesInTextFieldAndLabels()
    }
    
    func presentSliderValuesInTextFieldAndLabels() {
        
        redTF.text = String(redSlider.value)
        greenTF.text = String(greenSlider.value)
        blueTF.text = String(blueSlider.value)
        
        
    }
    
    func getValuesFromView() {
        guard let color = colorView.backgroundColor else { return }
        let ciColor = CIColor(color: color)
        redSlider.value = Float(ciColor.red)
        greenSlider.value = Float(ciColor.green)
        blueSlider.value = Float(ciColor.blue)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func doneButtonPressed() {
       
        delegate.setSuperViewColor(colorIndex: colorView.backgroundColor ?? UIColor(
            red: 0.5, green: 0.1, blue: 0.5, alpha: 1))
        dismiss(animated: true)
    }
    
    
   
    

}
