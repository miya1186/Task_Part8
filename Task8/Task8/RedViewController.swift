//
//  RedViewController.swift
//  Task8
//
//  Created by miyazawaryohei on 2020/08/13.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class RedViewController: UIViewController,UITabBarDelegate{
    
    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.maximumValue = 1
        slider.minimumValue = 0
        slider.value = 0.0
        label.text = String(slider.value)
        
        UserDefaults.standard.set(label.text, forKey: "textValue")
        UserDefaults.standard.set(slider.value, forKey: "sliderValue")
        
    }
    
    
    @IBAction func sliderButton(_ sender: Any) {
        
        label.text = String(format: "%.5f",slider.value)
        
        UserDefaults.standard.set(label.text, forKey: "textValue")
        UserDefaults.standard.set(slider.value, forKey: "sliderValue")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let greenSliderValue = UserDefaults.standard.object(forKey: "sliderValue")
        let greenTextValue = UserDefaults.standard.object(forKey: "textValue")
        self.label.text = greenTextValue as? String
        self.slider.value = greenSliderValue as! Float
        
    }
    
}




