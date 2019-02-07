//
//  DataProvider.swift
//  coderswag
//
//  Created by Sayooj Sojen on 06/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import Foundation

class DataProvider{
    static let SelfInstance=DataProvider() //a static self instantiation inside the class, into the object SelfInstance. This is done to make it a singleton class. ie, a class in which each object takes only the same memory locationfor its entire lifetime, wiping the previous data.
    //In object-oriented programming, a singleton class is a class that can have only one object (an instance of the class) at a time.
//    After first time, if we try to instantiate the Singleton class, the new variable also points to the first instance created. So whatever modifications we do to any variable inside the class through any instance, it affects the variable of the single instance created and is visible if we access that variable through any variable of that class type defined.

    private let catagories = [
        Catagory(title: "SHIRTS", image: "shirts.png"),  //array of Catagories to emulate an external data source. udually in its place there's a database. Try making data grabing step private
        Catagory(title: "HOODIES", image: "hoodies.png"),
        Catagory(title: "HATS", image: "hats.png"),
        Catagory(title: "DIGITAL", image: "digital.png")
    ]
    
    private let hats=[
        Product(image: "hat01.png", titleText: "Devslopes Logo Graphics beanie", price: "$18"),
        Product(image: "hat02.png", titleText: "Devslopes Logo Black Hat", price: "$22"),
        Product(image: "hat03.png", titleText: "Devslopes Logo White Hat", price: "$22"),
        Product(image: "hat04.png", titleText: "Devslopes Logo Snapback", price: "$20")
    ]
    
    private let hoodies=[
        Product(image: "hoodie01.png", titleText: "Devslopes Logo Hoodie Grey", price: "$32"),
        Product(image: "hoodie02.png", titleText: "Devslopes Logo Hoodie Red", price: "$32"),
        Product(image: "hoodie03.png", titleText: "Devslopes Hoodie Grey", price: "$32"),
        Product(image: "hoodie04.png", titleText: "Devslopes Hoodie Black", price: "$32")
    ]
    
    private let shirts=[
        Product(image: "shirt01.png", titleText: "Devslopes Logo Shirt Black", price: "$18"),
        Product(image: "shirt02.png", titleText: "Devslopes Badge Shirt Light Grey", price: "$19"),
        Product(image: "shirt03.png", titleText: "Devslopes Logo Shirt Red", price: "$18"),
        Product(image: "shirt04.png", titleText: "Hustle Delegate Grey", price: "$18"),
        Product(image: "shirt05.png", titleText: "KickFlip Studios Black", price: "$18")
    ]
    
    private let digitals=[Product]()
    
    func getCatagories()->[Catagory]{
        return catagories
    }
    
    func getProducts(catagoryTitle: String)->[Product] {
        switch catagoryTitle{
        case "SHIRTS":return getShirts()
        case "HOODIES":return getHoodies()
        case "HATS":return getHats()
        case "DIGITAL":return getDigitals()
        default:return getShirts()
        }
    }
    
    func getShirts()->[Product]{
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getDigitals() -> [Product] {
        return digitals
    }
}

