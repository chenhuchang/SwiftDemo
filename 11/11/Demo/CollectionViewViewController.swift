//
//  CollectionViewViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class CollectionViewViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var collectionView:UICollectionView!
    var dataArray = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.automaticallyAdjustsScrollViewInsets = false
        let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.scrollDirection = UICollectionViewScrollDirection.vertical
        
        collectionView = UICollectionView.init(frame: CGRect(x:0,y:64,width:(self.view.frame.size.width),height:(self.view.frame.size.height-64)), collectionViewLayout: flowLayout)
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.white
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "demoIdentifier")
        collectionView.register(UICollectionReusableView.classForCoder(), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headerIdentifier")
        collectionView.register(UICollectionReusableView.classForCoder(), forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "footerIdentifier")
        self.view.addSubview(collectionView)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:((self.view.frame.size.width - 2.25)/2),height:((self.view.frame.size.width - 2.25)/2))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0.75, 0, 0.75)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.75
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.75
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width:(self.view.frame.size.width),height:40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width:(self.view.frame.size.width),height:40)
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "demoIdentifier", for: indexPath)
        cell.backgroundColor = UIColor.purple
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionElementKindSectionHeader {
            var label:UILabel!
            let headerview:UICollectionReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headerIdentifier", for: indexPath)
            for bView in headerview.subviews {
                bView.removeFromSuperview()
            }
            
            let bView = UIView()
            bView.frame = CGRect(x:1,y:0,width:(self.view.frame.size.width - 1.5),height:40)
            bView.backgroundColor = UIColor.lightGray
            headerview.addSubview(bView)
            if label == nil {
                label = UILabel(frame:CGRect(x:10.75,y:5,width:(self.view.frame.size.width - 1.5),height:30))
                label.font = UIFont.systemFont(ofSize: 15)
                label.backgroundColor = UIColor.clear
                label.textColor = UIColor.white
                label.textAlignment = NSTextAlignment.left
                headerview.addSubview(label)
            }
            let tmpStr = "第\(indexPath.section)个分组"
            let titleAttribute: NSDictionary = [NSForegroundColorAttributeName: UIColor.white,NSFontAttributeName : UIFont.boldSystemFont(ofSize: 15)]
            let nameStr = NSMutableAttributedString.init(string: tmpStr, attributes: titleAttribute as? [String : AnyObject])
            nameStr.addAttribute(NSForegroundColorAttributeName, value:UIColor.blue, range:NSRange(location:1,length:1))
            nameStr.addAttribute(NSForegroundColorAttributeName, value:UIColor.orange, range:NSRange(location:3,length:2))
            label.attributedText = nameStr
            headerview.backgroundColor = UIColor.white
            return headerview
        }
        else
        {
            let footerView:UICollectionReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "footerIdentifier", for: indexPath)
            for bView in footerView.subviews {
                bView.removeFromSuperview()
            }
            
            let bView = UIView()
            bView.frame = CGRect(x:1,y:0,width:(self.view.frame.size.width - 1.5),height:40)
            bView.backgroundColor = UIColor.orange
            footerView.addSubview(bView)
            footerView.backgroundColor = UIColor.white
            return footerView
        }
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("当前选中的是第\(indexPath.section)组*****第\(indexPath.item)个")
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
