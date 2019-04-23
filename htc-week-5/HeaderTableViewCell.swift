//
//  HeaderTableViewCell.swift
//  htc-week-5
//
//  Created by maxim mironov on 23/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import UIKit
class HeaderTableViewCell: TableViewCell {
    @IBOutlet weak var tittleLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setup(tittle:String) {
       tittleLable.text = tittle
    }
}
