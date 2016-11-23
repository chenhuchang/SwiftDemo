//
//  SearchBarViewController.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class SearchBarViewController: UIViewController,UISearchBarDelegate {
    var searchBar:UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = false
        // Do any additional setup after loading the view.
        searchBar = UISearchBar.init(frame: CGRect(x:10,y:74,width:(self.view.frame.size.width - 20),height:40))
        searchBar.delegate = self;
        searchBar.placeholder = "请搜索热门商品吧"
        searchBar.searchBarStyle = UISearchBarStyle.minimal
        searchBar.setShowsCancelButton(true, animated: true)
        searchBar.tintColor = UIColor.orange
        searchBar.showsScopeBar = true
//        searchBar.showsSearchResultsButton = true
        searchBar.showsBookmarkButton = true
//        searchBar.prompt = "QQ"
        searchBar.barTintColor = UIColor.blue
        self.view.addSubview(searchBar)
    }
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        return true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.text = nil
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
        let boolStr = searchBar.text as NSString!
        print("****正在输入的信息\(text) 之前的String:\(boolStr)")
        return true
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("正在输入的信息\(searchBar.text)")
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("开始编辑\(searchBar.text)")
    }
    
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        print("点击书签按钮")
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
