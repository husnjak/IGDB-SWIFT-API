//
//  IGDBWrapper.swift
//  IGDB-API-SWIFT
//
//  Created by Filip Husnjak on 2019-01-04.
//  Copyright © 2019 Filip Husnjak. All rights reserved.
//

import Foundation
import Just

private let APIURL = "https://api.igdb.com/v4"

public class IGDBWrapper {
    private var requestHeaders = ["x-user-agent": "igdb-api-swift"]
    public init(clientID: String, accessToken: String) {
        requestHeaders = ["x-user-agent": "igdb-api-swift", "client-id": clientID, "authorization": "Bearer \(accessToken)"]
    }
    
    public func apiProtoRequest(endpoint: Endpoint, apicalypseQuery: String, dataResponse: @escaping (Data) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        let requestURL = "\(APIURL)\(endpoint.url()).pb"
        Just.post(requestURL, headers: requestHeaders, requestBody: apicalypseQuery.data(using: .utf8, allowLossyConversion: false)) { response in
            if response.statusCode != 200 {
                errorResponse(RequestException(statusCode: response.statusCode ?? -1, url: requestURL, msg: response.text ?? ""))
            }
            dataResponse(response.content!)
        }
    }
    
    public func apiJsonRequest(endpoint: Endpoint, apicalypseQuery: String, dataResponse: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        let requestURL = "\(APIURL)\(endpoint.url())"

        Just.post(requestURL, headers: requestHeaders, requestBody: apicalypseQuery.data(using: .utf8, allowLossyConversion: false)) { response in
            if response.statusCode != 200 {
                errorResponse(RequestException(statusCode: response.statusCode ?? -1, url: requestURL, msg: response.text ?? ""))
            }
            dataResponse(response.text ?? "")
        }
    }
}

public extension Endpoint {
    func url() -> String {
        return "/\(self.rawValue.lowercased())"
    }
}
