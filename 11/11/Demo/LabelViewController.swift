//
//  LabelViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class LabelViewController: UIViewController {
    var label: UILabel!
    var label2: UILabel!
    var label3: UILabel!
    var label4: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // label
        label = UILabel(frame:CGRect(x:20,y:80,width:(self.view.frame.size.width - 40),height:30))
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = UIColor.lightGray
        label.textColor = UIColor.orange
        label.isHighlighted = true
        label.highlightedTextColor = UIColor.red
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        let dict = [NSForegroundColorAttributeName:UIColor.purple,NSFontAttributeName:UIFont.boldSystemFont(ofSize: 15)]
        let labelStr = "hello Swift,Welcome to Swift"
        let nameStr = NSMutableAttributedString.init(string: labelStr, attributes: dict)
        nameStr.addAttribute(NSForegroundColorAttributeName, value: UIColor.green, range: NSRange(location:12,length:7))
        nameStr.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 18, weight: 1.5), range: NSRange(location:12,length:7))
        nameStr.addAttribute(NSForegroundColorAttributeName, value: UIColor.white, range: NSRange(location:23,length:5))
        label.attributedText = nameStr
        
        label2 = UILabel(frame:CGRect(x:20,y:140,width:150,height:30))
        label2.text = "hello Swift"
        label2.font = UIFont.systemFont(ofSize: 15)
        label2.backgroundColor = UIColor.cyan
        label2.textColor = UIColor.orange
        label2.isHighlighted = true
        label2.highlightedTextColor = UIColor.red
        label2.textAlignment = NSTextAlignment.left
        self.view.addSubview(label2)
        
        
        label3 = UILabel(frame:CGRect(x:190,y:140,width:110,height:30))
        label3.text = "hello Swift"
        label3.font = UIFont.systemFont(ofSize: 15)
        label3.backgroundColor = UIColor.cyan
        label3.textColor = UIColor.orange
        label3.isHighlighted = true
        label3.highlightedTextColor = UIColor.red
        label3.textAlignment = NSTextAlignment.right
        self.view.addSubview(label3)
        
        label4 = UILabel(frame:CGRect(x:20,y:200,width:280,height:30))
        let str = "hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World hello Swift,Welcome to Swift Code World "
        label4.text = str
        label4.font = UIFont.systemFont(ofSize: 15)
        label4.numberOfLines = 0
        label4.backgroundColor = UIColor.cyan
        label4.textColor = UIColor.orange
        label4.isHighlighted = true
        label4.highlightedTextColor = UIColor.red
        label4.textAlignment = NSTextAlignment.left
        
        
        
        self.view.addSubview(label4)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
