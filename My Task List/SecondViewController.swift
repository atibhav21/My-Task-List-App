//
//  SecondViewController.swift
//  My Task List
//
//  Created by Atibhav Mittal on 2/12/16.
//  Copyright © 2016 ati. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtDesc: UITextField!
    @IBOutlet var txtTask: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnAddTask_Click(sender: UIButton) {
        if(txtTask.text != "")
        {
            taskMgr.addTask(txtTask.text!, description: txtDesc.text!)
            self.view.endEditing(true)
            txtTask.text = ""
            txtDesc.text = ""
            self.tabBarController?.selectedIndex = 0
        }
    }
    
    //IOS touch functions
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder() //first responder is keyboard which then goes away
        
        return true;
    }

}

