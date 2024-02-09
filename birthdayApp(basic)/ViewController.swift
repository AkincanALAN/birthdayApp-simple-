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
    }


    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBAction func saveButton(_ sender: Any) {
        let name = nameText.text
        nameLabel.text = name
        let birthday = birthdayText.text
        birthdayLabel.text = birthday
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
}
