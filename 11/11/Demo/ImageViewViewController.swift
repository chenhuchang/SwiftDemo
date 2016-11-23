//
//  ImageViewViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class ImageViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //imageView
        let image = UIImage.init(named: "leaderImage2")
        let w = image?.size.width
        let h = image?.size.height
        
        let imageView = UIImageView(frame:CGRect(x:0,y:100,width:w!/2 ,height:h!/2))
        imageView.image = image
        imageView.backgroundColor = UIColor.brown
        imageView.isUserInteractionEnabled = true
        imageView.tag = 10000;
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(imageViewTap(_ :)))
        imageView.addGestureRecognizer(tap);
        self.view.addSubview(imageView)
    }
    
    
    func imageViewTap(_ tap :UITapGestureRecognizer){
        let indexNumber = tap.view?.tag
        
        print(indexNumber ?? 0);
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
