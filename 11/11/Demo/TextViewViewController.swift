//
//  TextViewViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class TextViewViewController: UIViewController,UITextViewDelegate {

    var myTextView:UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = false
        // Do any additional setup after loading the view.
        myTextView = UITextView.init(frame: CGRect(x:10,y:74,width:(self.view.frame.size.width - 20),height:40))
        myTextView.layer.cornerRadius = 2
        myTextView.layer.borderColor = UIColor.lightGray.cgColor
        myTextView.layer.borderWidth = 0.5
        myTextView.delegate = self
        myTextView.text = "文本展示"
        self.view.addSubview(myTextView)
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        print("将要开始编辑的时候")
        return true
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        print("开始编辑的时候")
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        print("将要正在编辑的时候\(textView.text)")
        return true
    }
    
    func textViewDidChange(_ textView: UITextView) {
        print("******正在编辑的文字\(textView.text)")
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        print("将要结束编辑的时候")
        return true
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        print("结束编辑的时候")
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
