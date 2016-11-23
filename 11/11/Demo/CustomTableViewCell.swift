//
//  CustomTableViewCell.swift
//  11
//
//  Created by CHC on 2016/11/22.
//  Copyright © 2016年 CHC. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var TitleString:String?
    var iconImageName:String?
    
    var TitleNameLabel:UILabel?
    var TitleContentLabel:UILabel?
    var iconImageView:UIImageView?
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.iconImageView=UIImageView.init()
        self.iconImageView?.backgroundColor = UIColor.red
        self.contentView.addSubview(self.iconImageView!)
        
        self.TitleNameLabel=UILabel()
        self.TitleNameLabel?.font = UIFont.systemFont(ofSize: 15)
        self.TitleNameLabel?.textColor = UIColor.white
        self.contentView.addSubview(self.TitleNameLabel!)
        
        self.TitleContentLabel = UILabel()
        self.TitleContentLabel?.font = UIFont.systemFont(ofSize: 13)
        self.TitleContentLabel?.textColor = UIColor.white
        self.contentView.addSubview(self.TitleContentLabel!)
        
        self.selectionStyle = UITableViewCellSelectionStyle.none
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.iconImageView?.frame = CGRect(x:10,y:10,width:(self.frame.size.height - 20),height:(self.frame.size.height - 20))
        self.iconImageView?.layer.cornerRadius = (self.frame.size.height - 20)/2
        self.TitleNameLabel?.frame = CGRect(x:self.frame.size.height,y:5,width:self.frame.size.width - (self.frame.size.height - 20),height:(17))
        self.TitleContentLabel?.frame = CGRect(x:self.frame.size.height,y:23,width:self.frame.size.width - (self.frame.size.height - 20),height:(15))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
