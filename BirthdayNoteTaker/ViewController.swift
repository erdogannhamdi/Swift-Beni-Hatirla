//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Apple on 13.07.2020.
//  Copyright © 2020 erdogan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var BirthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let myName = storedName as? String{
            nameLabel.text = myName
        }
        
        if let myBirthday = storedBirthday as? String{
            BirthdayLabel.text = myBirthday
        }
        
        
        
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        
        nameLabel.text = "Name:" + nameTextField.text!
        BirthdayLabel.text = "Birthday:" + birthdayTextField.text!
        
    }
    
}

