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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorArea.layer.cornerRadius = 15
        setupSlider()
        

    }

    @IBAction func redColorChange() {
        
        //colorArea.backgroundColor = UIColor(red: CGFloat(sliderRedColor.value), green: CGFloat(sliderGreenColor.value), blue: CGFloat(sliderBlueColor), alpha: 1)
    }
    
    private func setupSlider() {
        sliderRedColor.value = 0.5
        sliderRedColor.minimumValue = 0
        sliderRedColor.maximumValue = 1
        sliderRedColor.minimumTrackTintColor = .red
        sliderRedColor.maximumTrackTintColor = .white
        sliderRedColor.thumbTintColor = .green
    }
}

