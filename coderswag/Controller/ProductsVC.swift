//
//  ProductsVC.swift
//  coderswag
//
//  Created by Sayooj Sojen on 07/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
   

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var productLabel: UILabel!
    var catagoryTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource=self
        collectionView.delegate=self
        productLabel.text=catagoryTitle
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataProvider.SelfInstance.getProducts(catagoryTitle: catagoryTitle).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? CollectionCellView{
            cell.updateCells(product: DataProvider.SelfInstance.getProducts(catagoryTitle: catagoryTitle)[indexPath.row])
            return cell
        }else{return CollectionCellView()}
    }
   
}
