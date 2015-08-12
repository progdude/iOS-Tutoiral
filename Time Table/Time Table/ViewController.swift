//
//  ViewController.swift
//  Time Table
//
//  Created by Archit Rathi on 8/11/15.
//  Copyright (c) 2015 Archit Rathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate{

    let rows = 20;
    
    @IBAction func slider(sender: AnyObject) {
        table.reloadData();
    }
    
    @IBOutlet var table: UITableView!
    
    @IBOutlet var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return rows;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell");
        var slideVal = Int(sliderValue.value);
        cell.textLabel?.text = "\(slideVal*(indexPath.row+1))";
        return cell;
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

