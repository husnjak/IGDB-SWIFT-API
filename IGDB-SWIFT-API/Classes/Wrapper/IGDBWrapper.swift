//
//  IGDBWrapper.swift
//  IGDB-API-SWIFT
//
//  Created by Filip Husnjak on 2019-01-04.
//  Copyright © 2019 Filip Husnjak. All rights reserved.
//

import Foundation
import SwiftHTTP
import Just

private let APIURL = "http://localhost:7002"//"https://api-v3.igdb.com"

public class IGDBWrapper {
    var userKey = ""
    var request: URLSessionDataTask?
    
    public func apiRequest(endpoint: Endpoint, apicalypseQuery: String, dataResponse: @escaping (Data) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        let requestURL = "\(APIURL)\(endpoint.url()).pb"
        Just.post(requestURL, headers: ["user-key": userKey], requestBody: apicalypseQuery.data(using: .utf8, allowLossyConversion: false)) { response in
            if response.statusCode != 200 {
                errorResponse(RequestException(statusCode: response.statusCode ?? -1, url: requestURL, msg: response.text ?? ""))
            }
            dataResponse(response.content!)
        }
    }
    
    public func apiJsonRequest(endpoint: Endpoint, apicalypseQuery: String, dataResponse: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        let requestURL = "\(APIURL)\(endpoint.url())"

        Just.post(requestURL, headers: ["user-key" : userKey], requestBody: apicalypseQuery.data(using: .utf8, allowLossyConversion: false)) { response in
            if response.statusCode != 200 {
                errorResponse(RequestException(statusCode: response.statusCode ?? -1, url: requestURL, msg: response.text ?? ""))
            }
            dataResponse(response.text ?? "")
        }
    }
}

extension Endpoint {
    func url() -> String {
        return "/\(self.rawValue.lowercased())"
    }
}
