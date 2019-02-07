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
    
    func updateTableCell(catagory: Catagory){
        cellImage.image=UIImage(named: catagory.image)
        cellText.text=catagory.title
        
    }

}
