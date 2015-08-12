//
//  FirstViewController.swift
//  To-Do
//
//  Created by Archit Rathi on 8/11/15.
//  Copyright (c) 2015 Archit Rathi. All rights reserved.
//

import UIKit

var to = [String]();

class FirstViewController: UIViewController,UITableViewDelegate {

    @IBOutlet var todo: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return to.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell");
        cell.textLabel?.text = to[indexPath.row];
        return cell;
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            to.removeAtIndex(indexPath.row);
            todo.reloadData();
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        todo.reloadData();
    }

}

