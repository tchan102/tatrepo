//
//  ViewController.swift
//  Prework
//
//  Created by Tat Chung Chan on 1/22/21.
//

import UIKit

class ViewController: UIViewController {

    
    var backgroundColor: UIColor!
    @IBOutlet var background: UIView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor(red: .random(in: 0...1),
                                      green: .random(in: 0...1),
                                      blue: .random(in: 0...1),
                                      alpha: 1.0)
    }
    
    @IBAction func didTapButton2(_ sender: Any) {
        background.backgroundColor = UIColor(red: .random(in: 0...1),
                                             green: .random(in: 0...1),
                                             blue: .random(in: 0...1),
                                             alpha: 1.0)
    }
    
    @IBAction func didTapButton3(_ sender: Any) {
        textLabel.text = textField.text
        if textField.text == "" {
            textLabel.text = "Hello from Tat!"
        }
        textField.text = ""
        background.endEditing(true)
    }
    @IBAction func didTapButton4(_ sender: Any) {
        textLabel.text = "Goodbye"
    }
    @IBAction func onRestGesture(_ sender: Any) {
        textLabel.text = "Hello from Tat!"
        textLabel.textColor = UIColor.black
        view.backgroundColor = backgroundColor
        
    }
    
}

