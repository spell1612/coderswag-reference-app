//
//  Product.swift
//  coderswag
//
//  Created by Sayooj Sojen on 07/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import Foundation

struct Product{
    private(set) public var image: String
    private(set) public var titleText: String
    private(set) public var price: String
    
    init(image: String,titleText: String, price: String) {
        self.image=image
        self.titleText=titleText
        self.price=price
    }
}
