//
//  ProductsModel.swift
//  Gift4
//
//  Created by Rafael Juzo G Oda on 4/11/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

import Foundation

class ProducsModel
{
    func listAllCategories() ->  Array<Category>
    {
        var categories = [Category]()
        
        if let jsonData = openJSON("Categories", extn: "json") {
            
            let jsonObject : AnyObject! = NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.MutableContainers, error: nil)
            if let productCategories = jsonObject["product_categories"] as? NSArray{
                
                for categoryInList in productCategories{
                    
                    var category = Category()
                    
                    let count = categoryInList["count"] as? Int
                    let name = categoryInList["name"] as? String
                    let slug = categoryInList["slug"] as? String
                    
                    println("Hello, \(category)!")
                }
              
            }
        }

        
        return categories
    }
    
    func openJSON(fileName: String, extn: String) -> NSData?{

        if let fileURL = NSBundle.mainBundle().URLForResource(fileName, withExtension: extn) {
            if let data = NSData(contentsOfURL: fileURL) {
                return data
            }
        }
        return nil
    }
}