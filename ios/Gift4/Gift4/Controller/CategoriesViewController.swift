//
//  CategoriesViewController.swift
//  Gift4
//
//  Created by Rafael Juzo G Oda on 4/11/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

import UIKit

class CategoriesViewController: UITableViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        let productModel = ProducsModel()
        
        let categories = productModel.listAllCategories()
        
    }

}
