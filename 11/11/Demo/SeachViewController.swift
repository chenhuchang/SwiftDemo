//
//  SeachViewController.swift
//  11
//
//  Created by CHC on 2016/11/23.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class SeachViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    var mySearchBar:UISearchBar!
    var searchTableView:UITableView!
    var isInut = false
    var searchDataArray = NSMutableArray.init(array: ["UIView","UILabel","UISwitch","UITableView","UICollection","UISearchBar","UITapgesture","View","Label","Button","ImageView","TextField","TextView","Switch","UIButton","UIImageView","UITextField","UITextView","TableView","Collection","SearchBar","Search"])
    var selectDataArray = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        // Do any additional setup after loading the view.
        mySearchBar = UISearchBar.init(frame: CGRect(x:10,y:74,width:(self.view.frame.size.width - 20),height:40))
        mySearchBar.delegate = self;
        mySearchBar.placeholder = "请搜索热门商品吧"
        mySearchBar.searchBarStyle = UISearchBarStyle.minimal
        mySearchBar.setShowsCancelButton(true, animated: true)
        mySearchBar.tintColor = UIColor.orange
        mySearchBar.barTintColor = UIColor.blue
        self.view.addSubview(mySearchBar)
        
        self.selectDataArray = self.searchDataArray.mutableCopy() as! NSMutableArray
        self.searchTableView = UITableView.init(frame: CGRect(x:0,y:124,width:(self.view.frame.size.width),height:(self.view.frame.size.height-124)), style: UITableViewStyle.plain)
        self.searchTableView.delegate = self;
        self.searchTableView.dataSource = self;
        self.searchTableView.tableFooterView = UIView()
        self.searchTableView.separatorColor = UIColor.red
        self.searchTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "demoIdentifier")
        //        self.tableView.tableHeaderView = imageView
        self.view.addSubview(self.searchTableView)
    }

    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        self.isInut = true
        return true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.text = nil
        self.selectDataArray.removeAllObjects()
        self.selectDataArray = self.searchDataArray.mutableCopy() as! NSMutableArray
        self.searchTableView.reloadData()
        self.isInut = false
        print("点击cancle按钮")
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        print("点击键盘搜索")
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print("结束编辑\(searchBar.text)")
    }
    
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        return true
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("正在输入的信息\(searchBar.text)")
        self.selectDataArray.removeAllObjects()
        if searchBar.text == "" {
            self.selectDataArray = self.searchDataArray.mutableCopy() as! NSMutableArray
        }
        else
        {
            for tmpStr in self.searchDataArray {
                if (tmpStr as AnyObject).lowercased.hasPrefix((searchBar.text?.lowercased())!) {
                    self.selectDataArray.add(tmpStr)
                }
            }
        }
        self.searchTableView.reloadData()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("开始编辑\(searchBar.text)")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.selectDataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "demoIdentifier")
        if cell ==  nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "demoIdentifier")
        }
        cell?.backgroundColor = UIColor.white
        cell?.textLabel?.text = self.selectDataArray[indexPath.row] as? String
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var cellString = self.selectDataArray[indexPath.row] as! String
        cellString = cellString.appending("Demo")
        print("当前选中第\(indexPath.row)行*** 标题为\(cellString)")
        
        let cell = tableView.cellForRow(at: indexPath)
        if !self.isInut {
            cell?.contentView.backgroundColor = UIColor.red
        }
        else
        {
            cell?.contentView.backgroundColor = UIColor.orange
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if !self.isInut {
            cell?.backgroundColor = UIColor.white
        }
        else
        {
            cell?.backgroundColor = UIColor.white
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
