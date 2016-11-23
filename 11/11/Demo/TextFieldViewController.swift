//
//  TextFieldViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // textfiled
        let textfiled = UITextField(frame:CGRect(x:50,y:200,width:220,height:40))
        textfiled.backgroundColor = UIColor.lightGray
        textfiled.textColor = UIColor.red
        textfiled.textAlignment = NSTextAlignment.left
        textfiled.text = "奔跑吧"
        textfiled.delegate = self
        textfiled.placeholder = "请输入文字"
        textfiled.font = UIFont.boldSystemFont(ofSize: 15)
        textfiled.borderStyle = UITextBorderStyle.roundedRect
        self.view.addSubview(textfiled)
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("当前输入的文字\(textField.text)")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
