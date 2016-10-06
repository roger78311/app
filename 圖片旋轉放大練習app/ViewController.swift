//
//  ViewController.swift
//  圖片旋轉放大練習app
//
//  Created by 陳銘杰 on 2016/10/5.
//  Copyright © 2016年 陳銘杰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var btn2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label1.text = "四葉妹妹！"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rotationBtn(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.2, animations:({
            self.img1.transform = CGAffineTransform(rotationAngle: 360)
        }))
        
    }
    @IBAction func rotationBtnCancel(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.2, animations:({
            self.img1.transform = CGAffineTransform(rotationAngle: 0)
        }))
    }
    @IBAction func scaleBtn(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.2, animations:({
            self.img1.transform = CGAffineTransform(scaleX: 2, y: 2)
        }))
        
    }
    @IBAction func scaleBtnCancel(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.2, animations:({
            self.img1.transform = CGAffineTransform(scaleX: 1, y: 1)
        }))
        
    }
}

