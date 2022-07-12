//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Николай Выскребенцев on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorArea: UIView!
    
    @IBOutlet var sliderRedColor: UISlider!
    @IBOutlet var sliderGreenColor: UISlider!
    @IBOutlet var sliderBlueColor: UISlider!
    
    @IBOutlet var redColorLevel: UILabel!
    @IBOutlet var greenColorLevel: UILabel!
    @IBOutlet var blueColorLevel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorArea.layer.cornerRadius = 15
        setupTexLabel()
        colorChange()
        labelValueSetting()
    }

    @IBAction func sliderAction() {
        colorChange()
        labelValueSetting()
    }

    private func setupTexLabel() {
        redColorLevel.text = String(sliderRedColor.value)
        greenColorLevel.text = String(sliderGreenColor.value)
        blueColorLevel.text = String(sliderBlueColor.value)
    }
    
    private func colorChange() {
        colorArea.backgroundColor =
        UIColor(red: CGFloat(sliderRedColor.value),
                green: CGFloat(sliderGreenColor.value),
                blue: CGFloat(sliderBlueColor.value),
                alpha: 1)
    }
    
    private func labelValueSetting() {
        redColorLevel.text = String(format: "%.2f", sliderRedColor.value)
        greenColorLevel.text = String(format: "%.2f", sliderGreenColor.value)
        blueColorLevel.text = String(format: "%.2f", sliderBlueColor.value)
    }
  
}

