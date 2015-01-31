//
//  ViewController.swift
//  Postcard
//
//  Created by Alejandro talavera on 28/01/15.
//  Copyright (c) 2015 Talavera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var messageSent: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() //funcion para ocultar el teclado
        
        messageSent.setTitle("Mail Sent", forState: UIControlState.Normal) //cambia el texto que hay en el boton, el primer parametro recibe un string y el segundo indica el tipo de texto que se mostrara (subrayado, normal etc.)
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        
        
      
    }

}

 