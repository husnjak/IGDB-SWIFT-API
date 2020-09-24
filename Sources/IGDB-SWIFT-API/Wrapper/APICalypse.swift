//
//  APICalypse.swift
//  IGDB-API-SWIFT
//
//  Created by Filip Husnjak on 2019-01-04.
//  Copyright © 2019 Filip Husnjak. All rights reserved.
//

import Foundation

public class APICalypse {
    private var search = ""
    private var fields = ""
    private var exclude = ""
    private var limit = ""
    private var offset = ""
    private var sort = ""
    private var _where = ""
    
    public init() {}
    
    public func sort(field: String, order: Sort) -> APICalypse {
        self.sort = "s \(field) \(order.rawValue);"
        return self
    }
    
    public func fields(fields: String) -> APICalypse {
        self.fields = "f \(fields);"
        return self
    }
    
    public func exclude(fields: String) -> APICalypse {
        self.exclude = "x \(fields);"
        return self
    }
    
    public func limit(value: Int32) -> APICalypse {
        self.limit = "l \(value);"
        return self
    }
    
    public func offset(value: Int32) -> APICalypse {
        self.offset = "o \(value);"
        return self
    }
    
    public func search(searchQuery: String) -> APICalypse {
        self.search = "search \"\(searchQuery)\";"
        return self
    }
    
    public func `where`(query: String) -> APICalypse {
        if query.contains("where") || query.contains("w") {
            self._where = query
        } else {
            if query.contains(";") {
                self._where = "w \(query)"
            } else {
                self._where = "w \(query);"
            }
        }
        return self
    }
    
    public func buildQuery() -> String {
        var query = ""
        if !search.isEmpty {
            query = query + search
        }
        if !fields.isEmpty {
            query = query + fields
        }
        if !exclude.isEmpty {
            query = query + exclude
        }
        if !limit.isEmpty {
            query = query + limit
        }
        if !offset.isEmpty {
            query = query + offset
        }
        if !sort.isEmpty {
            query = query + sort
        }
        if !_where.isEmpty {
            query = query + _where
        }
        
        return query
    }
}

public enum Sort: String {
    case ASCENDING = "asc", DESCENDING = "desc"
}
