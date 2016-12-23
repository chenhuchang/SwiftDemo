//
//  BaseViewController.swift
//  TabAndNav
//
//  Created by CHC on 2016/12/6.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.automaticallyAdjustsScrollViewInsets = false;
        self.tabBarController?.tabBar.tintColor = UIColor.colorWithHexString(hex: "#dd2727");
        self.navigationController?.navigationBar.barTintColor = UIColor.colorWithHexString(hex: "#dd2727");
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
