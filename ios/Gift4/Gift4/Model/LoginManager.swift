//
//  LoginManager.swift
//  Gift4
//
//  Created by Rafael Juzo G Oda on 4/7/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

import Foundation

class LoginManager {
    
    func login (name:String, pass:String) ->Bool  {
        

        let requestManager = AFHTTPRequestOperationManager()
        
        requestManager.GET( "http://examples.com/json",parameters: nil, success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("JSON: " + responseObject.description)
            },
            
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
        })
        
        return true
    }

    

}