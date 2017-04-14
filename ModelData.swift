//
//  ModelData.swift
//  WallPostPOC
//
//  Created by vyshnavi k on 14/04/17.
//  Copyright © 2017 spin. All rights reserved.
//

import UIKit

class ModelData: NSObject {
    
    var id : Int!
    var name:String!
    var body:String!
    var userid:Int!
    
    
    init(id:Int,name:String,body:String,userid:Int) {
        self.id = id
        self.body = body
        self.name = name
        self.userid = userid
    }


}
