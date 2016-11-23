//
//  ViewViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class ViewViewController: UIViewController {
    var isTouch = false 
    var bView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // UIView
        self.bView = UIView(frame:CGRect(x:60,y:70,width:200,height:80))
        self.bView.backgroundColor = UIColor.purple
        self.bView.layer.cornerRadius = 2
        self.bView.layer.borderColor = UIColor.red.cgColor
        self.bView.layer.borderWidth = 0.5
        self.bView.layer.masksToBounds = true
        let bViewTap = UITapGestureRecognizer.init(target: self, action: #selector(bViewAnimationClick(_:)))
        bView.addGestureRecognizer(bViewTap)
        self.view.addSubview(self.bView)
    }
    
    func bViewAnimationClick(_ bTap:UITapGestureRecognizer)
    {
        if self.isTouch
        {
            
            UIView.animate(withDuration: 0.35, animations: { 
                self.bView.frame = CGRect(x:100,y:100,width:120,height:20)
            }, completion: { (finished) in
                self.isTouch = false
                self.bView.backgroundColor = UIColor.cyan
            })
        }
        else
        {
            UIView.animate(withDuration: 0.35, animations: {
                self.bView.frame = CGRect(x:60,y:70,width:200,height:80)
            }, completion: { (finish) in
                self.isTouch = true
                self.bView.backgroundColor = UIColor.purple
            })
        }
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
