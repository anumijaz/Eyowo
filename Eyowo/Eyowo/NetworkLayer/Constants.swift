//
//  Constants.swift
//  Eyowo
//
//  Created by Anum Ijaz on 03/08/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//
import Foundation
struct ProductionServer {

    static let baseURL = "http://www.json-generator.com/"

}

enum HTTPHeaderField: String {

    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"

}

enum ContentType: String {
    case json = "application/json"
}
