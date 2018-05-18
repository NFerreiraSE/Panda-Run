//
//  ViewController.swift
//  App
//
//  Created by Nicholas Ferreira on 5/10/18.
//  Copyright © 2018 Nicholas Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Play(_ sender: Any) {
        
       
        self.GameOver.isHidden = true
        self.Retry.isHidden = true
        self.Panda.isHidden = false
        self.Logo.isHidden = true
        self.Score.isHidden = true
        self.Panda.center.x = 178.0
         self.Panda.center.y = 390.0
        self.Play.isHidden = true
        self.Col1.isHidden = false
        self.Col2.isHidden = false
        self.Col3.isHidden = false
        self.Col4.isHidden = false
        self.Col5.isHidden = false
        self.Col6.isHidden = false
        self.Col7.isHidden = false
        self.Col8.isHidden = false
        self.Col9.isHidden = false
        self.Col10.isHidden = false
        self.Top1.isHidden = true
         self.Top2.isHidden = true
         self.Top3.isHidden = true
        self.Col1.center = CGPoint(x:175.0,y:436.0)
        self.Col2.center = CGPoint(x:214.0,y:407.0)
        self.Col3.center = ColumnPlacement(x:Col2.center.x,y: Col2.center.y)
    }
    @IBAction func Retry(_ sender: Any) {
    }
    @IBOutlet weak var Col10: UIImageView!
    @IBOutlet weak var Col9: UIImageView!
    @IBOutlet weak var Col8: UIImageView!
    @IBOutlet weak var Col7: UIImageView!
    @IBOutlet weak var Col6: UIImageView!
    @IBOutlet weak var Col5: UIImageView!
    @IBOutlet weak var Col4: UIImageView!
    @IBOutlet weak var Col3: UIImageView!
    @IBOutlet weak var Col2: UIImageView!
    @IBOutlet weak var Col1: UIImageView!
    @IBOutlet weak var Top3: UIImageView!
    @IBOutlet weak var Top2: UIImageView!
    @IBOutlet weak var Top1: UIImageView!
    @IBOutlet weak var Play: UIButton!
    @IBOutlet weak var Score: UIImageView!
    @IBOutlet weak var Retry: UIButton!
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var GameOver: UIImageView!
    @IBOutlet weak var Panda: UIImageView!
    override func viewDidLoad() {
       
        super.viewDidLoad()
        self.GameOver.isHidden = true
        self.Retry.isHidden = true
        self.Panda.isHidden = true 
        self.Logo.isHidden = false
        self.Score.isHidden = true
        self.Play.isHidden = false
        self.Col1.isHidden = true
        self.Col2.isHidden = true
        self.Col3.isHidden = true
        self.Col4.isHidden = true
        self.Col5.isHidden = true
        self.Col6.isHidden = true
        self.Col7.isHidden = true
        self.Col8.isHidden = true
        self.Col9.isHidden = true
        self.Col10.isHidden = true
        self.Top1.isHidden = true
        self.Top2.isHidden = true
        self.Top3.isHidden = true    }
    
    func ColumnPlacement(x: CGFloat,y: CGFloat) -> (CGPoint) {
        var ColNewX: CGFloat
        var ColNewY: CGFloat
        
        let rand: Int = Int(arc4random() % 2)
        
        if rand == 1 {ColNewX = x + 39
                        ColNewY = y - 29
        }
        else{ColNewX = x + 40
            ColNewY = y - 30}
        let NewColCenter = CGPoint(x:ColNewX,y:ColNewY)
        return (NewColCenter)
    }
        
        
        
        
        


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


