//
//  ViewController.swift
//  Light
//
//  Created by Leonardo Rinaldi on 15/06/2020.
//  Copyright © 2020 Leonardo Rinaldi. All rights reserved.
//
//  Simple App that change the background color when you tap on the display
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

    //@IBOutlet var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func buttonPressed(_ sender: Any) {
        
        //lightOn.toggle()
        lightOn = !lightOn
        
        updateUI()
        
    }
    
    func updateUI() {
              
        view.backgroundColor = lightOn ? .white : .black //funziona come un if
          }
}

