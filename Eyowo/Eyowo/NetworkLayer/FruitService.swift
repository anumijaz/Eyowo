//
//  FruitService.swift
//  Eyowo
//
//  Created by Anum Ijaz on 03/08/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import UIKit

class FruitService {

    static func getFruits(completion: @escaping (FruitResponse) -> ()) {

        NetworkApiClient.getRequest(route: NetworkRouter.fruits) { (responseData) in
               do {
                   guard let jsonPayload = responseData.data else {
                       return

                   }
                   let str = String(decoding: jsonPayload, as: UTF8.self)
                   let fetchFruitResponse = try JSONDecoder().decode(FruitResponse.self, from: jsonPayload)
                   completion(fetchFruitResponse)
                
               } catch let jsonDecodingError {

                   print(jsonDecodingError)

               }

           }


    

       }
    }


