//
//  ViewController.swift
//  seguesProgrammatic
//
//  Created by d182_sofia_d on 09/03/18.
//  Copyright © 2018 d182_sofia_d. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var segueSwitch: UISwitch!
    @IBOutlet weak var TextFieldBonito: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextFieldBonito.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func HideKeyboard(_ sender: UIButton) {
        TextFieldBonito.resignFirstResponder() //para ocultar el teclado cuando toque el boton
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "YellowSegue", sender: nil)
        }
    }
    @IBAction func lilaButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "LilaSegue", sender: nil)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //cuando lo asigno como delegado textField es igual que TextFieldBonito
        return textField.resignFirstResponder()
    }
    
}

