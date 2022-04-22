//
//  ViewController.swift
//  hw02
//
//  Created by Svetlana Margetová on 26.04.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var boxMain: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()  
    }
    
    var boxArray : [UIColor] = [UIColor]()
    
    func setRedColor(redBox : [UIView]) {
        for item in redBox {
            item.backgroundColor = .redColor()
        }
    }
    
    var redBox : [UIView] = [UIView]()
    func createRedBox() -> [UIView]{
        redBox.append(box1)
        redBox.append(boxMain)
        redBox.append(box3)
        setRedColor(redBox)
        return redBox  
    }
    
    @IBAction func btn1(sender: UIButton) {
        createRedBox()
    }
    
    @IBAction func btn2(sender: UIButton) {
        box2.backgroundColor = .blueColor()
        boxMain.backgroundColor = .blueColor()
        box4.backgroundColor = .blueColor()
    }
    
    
    @IBAction func btn3(sender: UIButton) {
        boxMain.backgroundColor = .greenColor()
    }
}

