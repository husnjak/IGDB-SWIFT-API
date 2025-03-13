//
//  IGDBWrapper.swift
//  IGDB-API-SWIFT
//
//  Created by Filip Husnjak on 2019-01-04.
//  Copyright © 2019 Filip Husnjak. All rights reserved.
//

import Foundation

private let APIURL = "https://api.igdb.com/v4"

public class IGDBWrapper {
    private var requestHeaders = ["x-user-agent": "igdb-api-swift"]
    private var requestURL = APIURL
    
    public init(clientID: String, accessToken: String) {
        requestHeaders = ["x-user-agent": "igdb-api-swift", "client-id": clientID, "authorization": "Bearer \(accessToken)"]
    }
    
    public init(proxyURL: String, proxyHeaders: [String: String]) {
        requestURL = proxyURL
        requestHeaders = proxyHeaders
        requestHeaders["x-user-agent"] = "igdb-api-swift"
    }
    
    private func makeRequest(url urlString: String, body: Data?, completion: @escaping (Result<(Data, Int), RequestException>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(RequestException(statusCode: -1, url: urlString, msg: "Invalid URL")))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = body
        
        for (key, value) in requestHeaders {
            request.setValue(value, forHTTPHeaderField: key)
        }
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(RequestException(statusCode: -1, url: urlString, msg: error.localizedDescription)))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(RequestException(statusCode: -1, url: urlString, msg: "Invalid response")))
                return
            }
            
            guard let data = data else {
                completion(.failure(RequestException(statusCode: httpResponse.statusCode, url: urlString, msg: "No data received")))
                return
            }
            
            completion(.success((data, httpResponse.statusCode)))
        }
        task.resume()
    }
    
    public func apiProtoRequest(endpoint: Endpoint, apicalypseQuery: String, dataResponse: @escaping (Data) -> Void, errorResponse: @escaping (RequestException) -> Void) {
        let requestURL = "\(requestURL)\(endpoint.url()).pb"
        let body = apicalypseQuery.data(using: .utf8, allowLossyConversion: false)
        
        makeRequest(url: requestURL, body: body) { result in
            switch result {
            case .success(let (data, statusCode)):
                if statusCode == 200 {
                    dataResponse(data)
                } else {
                    errorResponse(RequestException(statusCode: statusCode, url: requestURL, msg: String(data: data, encoding: .utf8) ?? ""))
                }
            case .failure(let error):
                errorResponse(error)
            }
        }
    }
    
    public func apiJsonRequest(endpoint: Endpoint, apicalypseQuery: String, dataResponse: @escaping (String) -> Void, errorResponse: @escaping (RequestException) -> Void) {
        let requestURL = "\(requestURL)\(endpoint.url())"
        let body = apicalypseQuery.data(using: .utf8, allowLossyConversion: false)
        
        makeRequest(url: requestURL, body: body) { result in
            switch result {
            case .success(let (data, statusCode)):
                if statusCode == 200 {
                    if let text = String(data: data, encoding: .utf8) {
                        dataResponse(text)
                    } else {
                        errorResponse(RequestException(statusCode: statusCode, url: requestURL, msg: "Could not decode response"))
                    }
                } else {
                    errorResponse(RequestException(statusCode: statusCode, url: requestURL, msg: String(data: data, encoding: .utf8) ?? ""))
                }
            case .failure(let error):
                errorResponse(error)
            }
        }
    }
    
    public func apiProtoCountRequest(endpoint: Endpoint, apicalypseQuery: String, dataResponse: @escaping (Data) -> Void, errorResponse: @escaping (RequestException) -> Void) {
        let requestURL = "\(requestURL)\(endpoint.url())/count.pb"
        let body = apicalypseQuery.data(using: .utf8, allowLossyConversion: false)
        
        makeRequest(url: requestURL, body: body) { result in
            switch result {
            case .success(let (data, statusCode)):
                if statusCode == 200 {
                    dataResponse(data)
                } else {
                    errorResponse(RequestException(statusCode: statusCode, url: requestURL, msg: String(data: data, encoding: .utf8) ?? ""))
                }
            case .failure(let error):
                errorResponse(error)
            }
        }
    }
    
    public func apiJsonCountRequest(endpoint: Endpoint, apicalypseQuery: String, dataResponse: @escaping (String) -> Void, errorResponse: @escaping (RequestException) -> Void) {
        let requestURL = "\(requestURL)\(endpoint.url())/count"
        let body = apicalypseQuery.data(using: .utf8, allowLossyConversion: false)
        
        makeRequest(url: requestURL, body: body) { result in
            switch result {
            case .success(let (data, statusCode)):
                if statusCode == 200 {
                    if let text = String(data: data, encoding: .utf8) {
                        dataResponse(text)
                    } else {
                        errorResponse(RequestException(statusCode: statusCode, url: requestURL, msg: "Could not decode response"))
                    }
                } else {
                    errorResponse(RequestException(statusCode: statusCode, url: requestURL, msg: String(data: data, encoding: .utf8) ?? ""))
                }
            case .failure(let error):
                errorResponse(error)
            }
        }
    }
}

public extension Endpoint {
    func url() -> String {
        return "/\(self.rawValue.lowercased())"
    }
}
