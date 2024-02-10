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
        if let stringName = storedName as? String {
            if let stringBirthday = storedBirthday as? String {
                nameLabel.text = "Name: \(stringName)"
                birthdayLabel.text = "Birthday: \(stringBirthday)"
            }
        }
        
    }
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(birthdayText.text, forKey: "birthday")
        nameLabel.text = "Name: \(nameText.text!) saved"
        birthdayLabel.text = "Date: \(birthdayText.text!) saved"

    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "birthday")
        nameLabel.text = "Name: "
        birthdayLabel.text = "Birthay: "
    }
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
}
