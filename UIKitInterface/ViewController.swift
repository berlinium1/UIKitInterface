//
//  ViewController.swift
//  UIKitInterface
//
//  Created by Берлинский Ярослав Владленович on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    //========Outlets==========
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var indicatorRed1: UILabel!
    @IBOutlet var indicatorRed2: UILabel!
    
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var indicatorGreen1: UILabel!
    @IBOutlet var indicatorGreen2: UILabel!

    @IBOutlet var sliderBlue: UISlider!
    @IBOutlet var indicatorBlue1: UILabel!
    @IBOutlet var indicatorBlue2: UILabel!
    
    
    //=======Methods============
    override func viewDidLoad() {
        super.viewDidLoad()
        //Red Slider's setup
        sliderRed.value = 1
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        
        //Green Slider's setup
        sliderGreen.value = 1
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        
        //Blue Slider's setup
        sliderBlue.value = 1
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        
        
    }

    @IBAction func sliderRedAction() {
        changeColor()
 let backgroundColor = view.backgroundColor
//        view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(sliderRed.value))
        indicatorRed1.text = String(roundNumber(number: sliderRed.value))
        indicatorRed2.text = String(roundNumber(number: sliderRed.value))
 sliderRed.minimumTrackTintColor = backgroundColor?.withAlphaComponent(CGFloat(sliderRed.value))
    }
    
    
    @IBAction func sliderGreenAction() {
        changeColor()
        let backgroundColor = view.backgroundColor
        indicatorGreen1.text = String(roundNumber(number: sliderGreen.value))
        indicatorGreen2.text = String(roundNumber(number: sliderGreen.value))
        sliderGreen.minimumTrackTintColor = backgroundColor?.withAlphaComponent(CGFloat(sliderGreen.value))
    }
    
    @IBAction func sliderBlueAction() {
        changeColor()
        let backgroundColor = view.backgroundColor
        indicatorBlue1.text = String(roundNumber(number: sliderBlue.value))
        indicatorBlue2.text = String(roundNumber(number: sliderBlue.value))
        sliderBlue.minimumTrackTintColor = backgroundColor?.withAlphaComponent(CGFloat(sliderBlue.value))
        
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
