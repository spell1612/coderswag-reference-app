//
//  ViewController.swift
//  coderswag
//
//  Created by Sayooj Sojen on 06/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
  
    @IBOutlet weak var catagoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        catagoryTable.dataSource=self
        catagoryTable.delegate=self //IMPORTANT
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataProvider.SelfInstance.getCatagories().count
        //as getcatagories returns array of Catagory, we use count to extrapolate number of elements
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell=tableView.dequeueReusableCell(withIdentifier: "Catagory Cell") as? TableCellView{
            //here CatagoryCell is the identifier of the table cell. Table view is accessed through the subclass(View) we made TableCellView.
            //Note cells rae reused and not kept in memory as we scroll in both ios and android
            let catagory=DataProvider.SelfInstance.getCatagories()[indexPath.row]//indexPath somehow returns the row/column/count, etc
            cell.updateTableCell(catagory: catagory)
            return cell
        }else{
            return TableCellView() //this is an empty cell of the cell view type
        }
        
    }
    

    
    
}

