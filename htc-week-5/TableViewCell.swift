//
//  TableViewCell.swift
//  htc-week-5
//
//  Created by maxim mironov on 23/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import UIKit
class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var textLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setup(lableText:String) {
        textLable.text = lableText
    }
}
