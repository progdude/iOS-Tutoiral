//
//  ViewController.swift
//  tic tac toe
//
//  Created by Archit Rathi on 8/13/15.
//  Copyright (c) 2015 Archit Rathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var result: UILabel!
    @IBOutlet var button: UIButton!
    @IBAction func butact(sender: AnyObject) {
        count = 0;
        game = [0,0,0,0,0,0,0,0,0];
        run = true;
        
        for(var i=0; i<9; i++){
        var buts : UIButton = view.viewWithTag(i) as! UIButton;
        buts.setImage(nil, forState: .Normal);
        }
    }
    
    var game = [0,0,0,0,0,0,0,0,0];
    
    var win = [[1,2,3],[4,5,6],[7,8,9],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];
    
    var count=0;
    
    var run = true;
    
    @IBOutlet var but1: UIButton!
    var image = UIImage();
    
    @IBAction func but1press(sender: AnyObject) {
            if(game[sender.tag]==0 && run==true){
            count++;
            
            if(count%2==0){
                image = UIImage(named: "cross.png")!;
                game[sender.tag] = 2;
            }
            else{
                image = UIImage(named: "circle.png")!;
                game[sender.tag] = 1;
            }
            
            sender.setImage(image, forState: .Normal);

                
                didWin();
        }
        else{
            
        }
        
        
    }
    
    
    func didWin(){
        for comb in win {
            if(game[comb[0]] != 0 && game[comb[0]] == game[comb[1]] && game[comb[1]]==game[comb[2]]){
                if(game[comb[0]]==2){
                    result.text = "Cross Won";
                }
                else{
                    result.text = "Circle Won";
                }
                
                button.hidden = false;
                result.hidden = false;
                
                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    self.result.center  = CGPointMake(self.result.center.x+400, self.result.center.y);
                    self.button.center = CGPointMake(self.button.center.x+400, self.button.center.y);
                })
                run=false;
            }
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        result.hidden = true;
        button.hidden = true;
        
        result.center = CGPointMake(result.center.x-400, result.center.y);
        button.center = CGPointMake(button.center.x-400, button.center.y);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        
    }


}

