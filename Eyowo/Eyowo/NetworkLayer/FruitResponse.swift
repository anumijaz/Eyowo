//
//  FruitResponse.swift
//  Eyowo
//
//  Created by Anum Ijaz on 03/08/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import Foundation

struct FruitResponse: Decodable{
    
    let success:Bool
    let message: String
    let fruitsList: [FruitData]
    
     enum CodingKeys: String, CodingKey {

            case success = "isSuccess"
            case message = "message"
            case fruitsList = "data"

        }
}

 


