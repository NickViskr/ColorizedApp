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
        setupSlider()
        

    }

    @IBAction func sliderAction() {
        colorArea.backgroundColor = UIColor(red: CGFloat(sliderRedColor.value), green: CGFloat(sliderGreenColor.value), blue: CGFloat(sliderBlueColor.value), alpha: 1)
    }

    
    private func setupSlider() {
        sliderRedColor.value = 0.5
        sliderRedColor.minimumValue = 0
        sliderRedColor.maximumValue = 1
        sliderRedColor.minimumTrackTintColor = .red
        sliderRedColor.maximumTrackTintColor = .white
        sliderRedColor.thumbTintColor = .green
        
        sliderGreenColor.value = 0.5
        sliderGreenColor.minimumValue = 0
        sliderGreenColor.maximumValue = 1
        sliderGreenColor.minimumTrackTintColor = .green
        sliderGreenColor.maximumTrackTintColor = .white
        sliderGreenColor.thumbTintColor = .green
        
        sliderBlueColor.value = 0.5
        sliderBlueColor.minimumValue = 0
        sliderBlueColor.maximumValue = 1
        sliderBlueColor.minimumTrackTintColor = .blue
        sliderBlueColor.maximumTrackTintColor = .white
        sliderBlueColor.thumbTintColor = .green

    }
}

