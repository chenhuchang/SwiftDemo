//
//  TableViewViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class TableViewViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var tableView : UITableView!
    var dataArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //
        self.automaticallyAdjustsScrollViewInsets = false
        self.tableView = UITableView.init(frame: CGRect(x:0,y:64,width:320,height:503), style: UITableViewStyle.plain)
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.tableView.tableFooterView = UIView()
        self.tableView.separatorColor = UIColor.red
        self.tableView.register(CustomTableViewCell.classForCoder(), forCellReuseIdentifier: "demoIdentifier")
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
        var cell:CustomTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "demoIdentifier") as? CustomTableViewCell
        if cell ==  nil {
            cell = CustomTableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "demoIdentifier")
        }
        cell?.backgroundColor = UIColor.orange
        cell?.TitleNameLabel?.text = self.dataArray[indexPath.row] as? String
        cell?.TitleContentLabel?.text = self.dataArray[indexPath.row] as? String
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var cellString = self.dataArray[indexPath.row] as! String
        cellString = cellString.appending("Demo")
        print("当前选中第\(indexPath.row)行*** 标题为\(cellString)")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.backgroundColor = UIColor.orange
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
