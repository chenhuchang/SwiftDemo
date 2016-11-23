//
//  ButtonViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {
    
    var isShow = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // button
        let button = UIButton(frame:CGRect(x:100,y:140,width:120,height:40))
        button.setTitle("Demo", for: UIControlState.normal)
        button.setTitleColor(UIColor.blue, for: UIControlState.normal)
        button.backgroundColor = UIColor.orange
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(buttonClick(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
        
    }

    
    func buttonClick(_ button :UIButton) {
        // Dispose of any resources that can be recreated.
        if isShow {
            isShow = false
        }
        else
        {
            let alertView = UIAlertController.init(title: "弹出框", message: "开始Swift的旅程吧", preferredStyle: UIAlertControllerStyle.alert)
            let action = UIAlertAction.init(title: "关闭", style: UIAlertActionStyle.default, handler: { (action) in
                print("点击关闭弹按钮")
            })
            let action1 = UIAlertAction.init(title: "确定", style: UIAlertActionStyle.default, handler: { (action) in
                print("点击确定按钮")
            })
            alertView.addAction(action)
            alertView.addAction(action1)
            self.present(alertView, animated: true, completion: { 
                
            })
            isShow = true
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
