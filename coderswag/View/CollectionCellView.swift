//
//  CollectionCellView.swift
//  coderswag
//
//  Created by Sayooj Sojen on 07/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class CollectionCellView: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var priceText: UILabel!
    
    func updateCells(product: Product){
        image.image=UIImage(named: product.image)
        titleText.text=product.titleText
        priceText.text=product.price
    }
    
}
