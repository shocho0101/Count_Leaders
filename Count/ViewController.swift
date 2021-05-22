//
//  ViewController.swift
//  Count
//
//  Created by 張翔 on 2021/05/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus() {
        count = count + 1
        showCount()
    }
    
    @IBAction func minus() {
        count = count - 1
        showCount()
    }
    
    @IBAction func multiply() {
        count = count * 2
        showCount()
    }
    
    @IBAction func divide() {
        count = count / 2
        showCount()
    }
    
    func showCount() {
        label.text = String(count)
        if 10 <= count {
            label.textColor = UIColor.red
        } else if count <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }

}

