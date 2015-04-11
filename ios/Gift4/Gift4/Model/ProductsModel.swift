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
            println(jsonData)
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