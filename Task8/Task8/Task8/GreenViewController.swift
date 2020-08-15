//
//  GreenViewController.swift
//  Task8
//
//  Created by miyazawaryohei on 2020/08/13.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController,UITabBarDelegate {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.maximumValue = 1
        slider.minimumValue = 0
    }
    
    @IBAction func sliderButton(_ sender: Any) {
        
        label.text = String(format: "%.5f",slider.value)
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate?.textNum = self.label.text!
        delegate?.sliderValue = self.slider.value
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        if let delegate = UIApplication.shared.delegate as? AppDelegate{
            self.label.text = delegate.textNum
            self.slider.value = delegate.sliderValue
        }
    }
    
}


