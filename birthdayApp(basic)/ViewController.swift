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
        nameLabel.text = nameText.text
        birthdayLabel.text = birthdayText.text
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
}
