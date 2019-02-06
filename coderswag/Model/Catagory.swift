//
//  Catagory.swift
//  coderswag
//
//  Created by Sayooj Sojen on 06/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import Foundation

struct Catagory{
    private(set) public var title:String
    private(set) public var image:String //private(set) means the data cant be set publically from outside, only from member functions such as init. this basically means private for setting, public for grabbing/retrieving
    
    init(title: String,image: String) {
        self.title=title
        self.image=image
        
    }
}
