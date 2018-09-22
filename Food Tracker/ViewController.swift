//
//  ViewController.swift
//  Food Tracker
//
//  Created by Hemanth Kasoju on 2018-09-22.
//  Copyright © 2018 Hemanth Kasoju. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        
        nameTextField.delegate = self;
        // Handle the text field’s user input through delegate callbacks.

    }
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text";
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder();
        return true;
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

