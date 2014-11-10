//
//  ViewController.swift
//  AgeOfPuppy
//
//  Created by Samuel Hooker on 10/11/14.
//  Copyright (c) 2014 Jocus Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var humanAgeTextField: UITextField!
    @IBOutlet weak var titleTextField: UILabel!
    @IBOutlet weak var puppyAgeTextField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButtonPressed(sender: AnyObject) {
        var ageAsFloat = Double((humanAgeTextField.text as NSString).doubleValue)
        titleTextField.hidden = false
        puppyAgeTextField.text = "\(ageAsFloat*7) years old"
        puppyAgeTextField.hidden = false
        //change it a bit
        humanAgeTextField.resignFirstResponder()
        
        
    }

    @IBAction func calculateAccuratlyButtonPressed(sender: AnyObject) {
        var ageAsFloat = Double((humanAgeTextField.text as NSString).doubleValue)
        var ageOfDog:Double
        if ageAsFloat < 2.0{
            ageOfDog = ageAsFloat * 10.5
        }
        else{
            ageOfDog = (10.5*2)+(4*(ageAsFloat-2))
        }
        
        puppyAgeTextField.text = "\(ageOfDog) years old"
        titleTextField.hidden = false
        puppyAgeTextField.hidden = false
        humanAgeTextField.resignFirstResponder()
        
    }
}

