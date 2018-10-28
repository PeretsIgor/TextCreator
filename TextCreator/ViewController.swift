//
//  ViewController.swift
//  TextCreator
//
//  Created by Igor on 11.09.17.
//  Copyright © 2017 Ihor Perets. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    var fontSize: CGFloat = 30
    var state = false
    @IBOutlet weak var shadowButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


    
    @IBAction func enterText(_ sender: Any) {
        
        label.text = textField.text
        self.resignFirstResponder()
    }
    
    @IBAction func red(_ sender: Any) {
        
        label.textColor = UIColor.red
    }
    
    @IBAction func green(_ sender: Any) {
        
        label.textColor = UIColor.green
    }
    
    @IBAction func blue(_ sender: Any) {
        
        label.textColor = UIColor.blue
    }
    
    @IBAction func font1(_ sender: Any) {
        
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: fontSize)
    }
    
    @IBAction func font2(_ sender: Any) {
        
        label.font = UIFont(name: "LemonMilk", size: fontSize)
    }
    
    @IBAction func font3(_ sender: Any) {
        
        label.font = UIFont(name: "Blacksword", size: fontSize)
    }
    
    @IBAction func font4(_ sender: Any) {
        
        label.font = UIFont(name: "Moon Flower", size: fontSize)
    }
    
    @IBAction func shadow(_ sender: Any) {
        
        if state == false {
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width: 2, height: 2)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 0.25
            
            state = true
            
            shadowButton.setTitle("Remove Shadow", for: UIControlState.normal)
            
        } else {
            label.layer.shadowOpacity = 0
            
            state = false
            
            shadowButton.setTitle("Set Shadow", for: UIControlState.normal)
        }
    }
    
    @IBAction func small(_ sender: Any) {
        
        fontSize = 30
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func medium(_ sender: Any) {
        
        fontSize = 50
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func large(_ sender: Any) {
        
        fontSize = 70
        label.font = label.font.withSize(fontSize)
    }
    
}





