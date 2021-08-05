//
//  NetworkRouter.swift
//  Eyowo
//
//  Created by Anum Ijaz on 03/08/2021.
//  Copyright © 2021 Anum Ijaz. All rights reserved.
//

import Foundation

import Alamofire


 

enum NetworkRouter: URLRequestConvertible {

    case fruits
    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .fruits:
            return .get
        }
    }

    // MARK: - Path
    private var path: String {
        switch self {
        case .fruits:
            return "/api/json/get/cfirQVmXvS?indent=2"
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .fruits:
            return nil
        }
    }

    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
                let url = URL(string: ProductionServer.baseURL + path)
        var urlRequest = URLRequest(url: url!)

        // HTTP Method
        urlRequest.httpMethod = method.rawValue

        // Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)

        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)

        // Parameters
        if let parameters = parameters {

            do {

                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])

            } catch {

                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))

            }
        }
        return urlRequest

    }
}
