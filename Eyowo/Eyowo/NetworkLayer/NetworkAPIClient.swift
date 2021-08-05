//
//  NetworkAPIClient.swift
//  Eyowo
//
//  Created by Anum Ijaz on 02/08/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class NetworkApiClient {

    static func getRequest(route: NetworkRouter, completion: @escaping (AFDataResponse<Data?>) -> ()) {

        AF.request(route).response { (responseData) in
            //print(responseData)

            completion(responseData)

        }

    }
    }  
    
    

