//
//  ViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var tableView:UITableView!
    var dataArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let maNa = "dhpvfh"
        let maNa1 = "dhpvfh"
        print(maNa,maNa1);
        self.navigationController?.navigationBar.barTintColor = UIColor.cyan
        self.navigationController?.navigationBar.tintColor = UIColor.red
        let navigationTitleAttribute: NSDictionary = [NSForegroundColorAttributeName: UIColor.red,NSFontAttributeName : UIFont.boldSystemFont(ofSize: 18)]
        self.navigationController?.navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
        self.automaticallyAdjustsScrollViewInsets = false
        self.navigationItem.title = "Swift Demo"
        
        
        // 
        self.tableView = UITableView.init(frame: CGRect(x:0,y:64,width:(self.view.frame.size.width),height:(self.view.frame.size.height-64)), style: UITableViewStyle.plain)
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.tableView.tableFooterView = UIView()
        self.tableView.separatorColor = UIColor.red
        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "demoIdentifier")
//        self.tableView.tableHeaderView = imageView
        self.view.addSubview(self.tableView)
        self.dataArray = ["View","Label","Button","ImageView","TextField","TextView","Switch","TableView","Collection","SearchBar"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.dataArray.count > 0 {
            return self.dataArray.count
        }
        else
        {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "demoIdentifier")
        cell?.backgroundColor = UIColor.orange
        cell?.textLabel?.textColor = UIColor.white
        cell?.textLabel?.text = self.dataArray[indexPath.row] as? String
        cell?.selectionStyle = UITableViewCellSelectionStyle.none
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var cellString = self.dataArray[indexPath.row] as! String
        cellString = cellString.appending("Demo")
        if indexPath.row == 0 {
            let vVC = ViewViewController()
            vVC.navigationItem.title = cellString
            vVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(vVC, animated: true)
        }
        else if indexPath.row == 1 {
            let lVC = LabelViewController()
            lVC.navigationItem.title = cellString
            lVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(lVC, animated: true)
        }
        else if indexPath.row == 2 {
            let bVC = ButtonViewController()
            bVC.navigationItem.title = cellString
            bVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(bVC, animated: true)
        }
        else if indexPath.row == 3 {
            let iVC = ImageViewViewController()
            iVC.navigationItem.title = cellString
            iVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(iVC, animated: true)
        }
        else if indexPath.row == 4 {
            let tfVC = TextFieldViewController()
            tfVC.navigationItem.title = cellString
            tfVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(tfVC, animated: true)
        }
        else if indexPath.row == 5 {
            let tvVC = TextViewViewController()
            tvVC.navigationItem.title = cellString
            tvVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(tvVC, animated: true)
        }
        else if indexPath.row == 6 {
            let sVC = SwitchViewController()
            sVC.navigationItem.title = cellString
            sVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(sVC, animated: true)
        }
        else if indexPath.row == 7 {
            let tvVC = TableViewViewController()
            tvVC.navigationItem.title = cellString
            tvVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(tvVC, animated: true)
        }
        else if indexPath.row == 8 {
            let cvVC = CollectionViewViewController()
            cvVC.navigationItem.title = cellString
            cvVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(cvVC, animated: true)
        }
        else if indexPath.row == 9 {
            let sbVC = SearchBarViewController()
            sbVC.navigationItem.title = cellString
            sbVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(sbVC, animated: true)
        }
        print("当前选中第\(indexPath.row)行")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.backgroundColor = UIColor.orange
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

