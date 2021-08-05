//
//  FruitData.swift
//  Eyowo
//
//  Created by Anum Ijaz on 02/08/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import UIKit

struct FruitData: Decodable{

  var image: String
  var description: String
  var id: String
  var name: String
  

    enum CodingKeys: String, CodingKey {

        case image = "image"
        case description = "description"
        case id = "id"
        case name = "name"

    }
    
}


