//
//  IGDBWrapper.swift
//  IGDB-API-SWIFT
//
//  Created by Filip Husnjak on 2019-01-04.
//  Copyright © 2019 Filip Husnjak. All rights reserved.
//

import Foundation
import Just

private let APIURL = "https://api-v3.igdb.com"

public class IGDBWrapper {
    public var userKey = ""
    public init() {}
    
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

public extension Endpoint {
    public func url() -> String {
        return "/\(self.rawValue.lowercased())"
    }
}
