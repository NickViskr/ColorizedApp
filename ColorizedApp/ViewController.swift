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
//        setupSlider()
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
    
//    private func setupSlider() {
//        sliderRedColor.value = 0.5
//        sliderRedColor.minimumValue = 0
//        sliderRedColor.maximumValue = 1
//        sliderRedColor.minimumTrackTintColor = .red
//        sliderRedColor.maximumTrackTintColor = .white
//        sliderRedColor.thumbTintColor = .green
//
//        sliderGreenColor.value = 0.5
//        sliderGreenColor.minimumValue = 0
//        sliderGreenColor.maximumValue = 1
//        sliderGreenColor.minimumTrackTintColor = .green
//        sliderGreenColor.maximumTrackTintColor = .white
//        sliderGreenColor.thumbTintColor = .green
//
//        sliderBlueColor.value = 0.5
//        sliderBlueColor.minimumValue = 0
//        sliderBlueColor.maximumValue = 1
//        sliderBlueColor.minimumTrackTintColor = .blue
//        sliderBlueColor.maximumTrackTintColor = .white
//        sliderBlueColor.thumbTintColor = .green
//
//    }
    
    private func colorChange() {
        colorArea.backgroundColor = UIColor(red: CGFloat(sliderRedColor.value), green: CGFloat(sliderGreenColor.value), blue: CGFloat(sliderBlueColor.value), alpha: 1)
    }
    
    private func labelValueSetting() {
        redColorLevel.text = "\(round((sliderRedColor.value) * 100) / 100)"
        greenColorLevel.text = "\(round((sliderGreenColor.value) * 100) / 100)"
        blueColorLevel.text = "\(round((sliderBlueColor.value) * 100) / 100)"
    }
  
}

