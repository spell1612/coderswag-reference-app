//
//  TableView.swift
//  coderswag
//
//  Created by Sayooj Sojen on 06/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class TableCellView: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
