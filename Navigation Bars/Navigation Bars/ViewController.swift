//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Archit Rathi on 8/11/15.
//  Copyright (c) 2015 Archit Rathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var time: UILabel!
    
    var timer = NSTimer();
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate();
    }
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate();
        count=0;
        time.text = "0";
        
    }
    
    @IBAction func play(sender: AnyObject) {
         timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true);
    }
    
    
    var count = 0;
    func result(){
        count++;
        time.text = "\(count)";
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

