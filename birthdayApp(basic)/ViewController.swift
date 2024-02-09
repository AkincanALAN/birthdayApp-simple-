//
//  ViewController.swift
//  birthdayApp(basic)
//
//  Created by Akıncan ALAN on 10/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        nameLabel.text = storedName as? String
        birthdayLabel.text = storedBirthday as? String
        
    }
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(birthdayText.text, forKey: "birthday")
        nameLabel.text = "Name: \(nameText.text!) saved"
        birthdayLabel.text = "Date: \(birthdayText.text!) saved"

    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
}
