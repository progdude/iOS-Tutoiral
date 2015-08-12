//
//  SecondViewController.swift
//  To-Do
//
//  Created by Archit Rathi on 8/11/15.
//  Copyright (c) 2015 Archit Rathi. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {

    @IBOutlet var item: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        to.append(item.text);
        println(to[0]);
        item.text = "";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true);
    }


}

