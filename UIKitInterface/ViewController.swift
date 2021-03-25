//
//  ViewController.swift
//  UIKitInterface
//
//  Created by Берлинский Ярослав Владленович on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    //========Outlets==========
    
    //Sliders
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var indicatorRed1: UILabel!
    
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var indicatorGreen1: UILabel!

    @IBOutlet var sliderBlue: UISlider!
    @IBOutlet var indicatorBlue1: UILabel!
    //Views
    @IBOutlet var viewField: UIView!
    //TextFields
    @IBOutlet var enterRed: UITextField!
    @IBOutlet var enterGreen: UITextField!
    @IBOutlet var enterBlue: UITextField!
    //Buttons
    @IBOutlet var doneButton: UIView!
    
    
    //=======Methods============
    override func viewDidLoad() {
        super.viewDidLoad()
        //Red Slider's setup
        sliderRed.value = 1
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.tintColor = .red
        
        //Green Slider's setup
        sliderGreen.value = 1
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.tintColor = .green
        
        //Blue Slider's setup
        sliderBlue.value = 1
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.tintColor = .blue
        
        viewField.layer.cornerRadius = 30
        
    }

    
    //==========IBActions==========
    @IBAction func sliderRedAction() {
        changeColor()
        indicatorRed1.text = String(roundNumber(number: sliderRed.value))
        
        //для смены цвета ползунка в соответствии с цветом заднего фона
        //sliderRed.minimumTrackTintColor = view.backgroundColor?.withAlphaComponent(CGFloat(sliderRed.value))
    }
    
    
    @IBAction func sliderGreenAction() {
        changeColor()
        indicatorGreen1.text = String(roundNumber(number: sliderGreen.value))
        
        //для смены цвета ползунка в соответствии с цветом заднего фона
        //sliderGreen.minimumTrackTintColor = view.backgroundColor?.withAlphaComponent(CGFloat(sliderGreen.value))
    }
    
    @IBAction func sliderBlueAction() {
        changeColor()
        indicatorBlue1.text = String(roundNumber(number: sliderBlue.value))
        
        //для смены цвета ползунка в соответствии с цветом заднего фона
        //sliderBlue.minimumTrackTintColor = view.backgroundColor?.withAlphaComponent(CGFloat(sliderBlue.value))
        
    }
    
    
    @IBAction func buttonDonePress() {
        guard let inputNumRed = enterRed.text, !inputNumRed.isEmpty else{return}
        if let _ = Double(inputNumRed) {
            sliderRed.value = Float((enterRed.text)!)!
            indicatorRed1.text = String(roundNumber(number: sliderRed.value))
        }
        guard let inputNumGreen = enterGreen.text, !inputNumGreen.isEmpty else{return}
        if let _ = Double(inputNumGreen) {
            sliderGreen.value = Float((enterGreen.text)!)!
            indicatorGreen1.text = String(roundNumber(number: sliderGreen.value))
        }
        guard let inputNumBlue = enterBlue.text, !inputNumBlue.isEmpty else{return}
        if let _ = Double(inputNumBlue) {
            sliderBlue.value = Float((enterBlue.text)!)!
            indicatorBlue1.text = String(roundNumber(number: sliderBlue.value))
        }
    }
    
    
    
}

extension ViewController{
    // вывод числа до разряда сотых
    func roundNumber(number: Float) -> Float {
        var result : Float;
        let margin : Float = 100;
        result = Float(Int(number*margin))/margin
        return result
    }
    
    // смена цвета фона въю-контроллера в соответствии с палитрой RGB
    func changeColor(){
        view.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
}
