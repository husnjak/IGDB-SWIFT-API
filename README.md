# IGDB SWIFT-API
A Swift wrapper for the IGDB.com Free Video Game Database API.

__IMPORTANT__

This wrapper is compatible with ONLY their newest release V3.

## About IGDB
One of the principles behind IGDB.com is accessibility of data. We wish to share the data with anyone who wants to build cool video game oriented websites, apps and services. This means that the information you contribute to IGDB.com can be used by other projects as well.

Thus, you are not only contributing to the value of this site but to thousands of other projects as well. We are looking forward to see what exciting game related projects you come up with. Happy coding!

More info here:
* [About the API](https://www.igdb.com/api)
* [API Documentation](https://api-docs.igdb.com/)

Information about the Querying language APICalypse:
* [apicalypse.io](https://apicalypse.io/)

## About the wrapper
This wrapper is written and tested in Swift 4.  

The Wrapper can handle both the IGDB generated classes and JSON (Strings), I have chosen to make the Generated classes the standard way because it will make it easier to use as you don't have to create your own classes to hold the information.

# Installation and setup
### CocoaPods
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```
To integrate IGDBWrapper into your Xcode project using CocoaPods, specify it in your `Podfile`:
```ruby
pod 'IGDB-SWIFT-API', git: "https://github.com/husnjak/IGDB-API-SWIFT.git"
```

Then, run the following command:

```bash
$ pod install
```

## Using your API key
* Create a new IGDBWrapper Object by passing and then pass it your API key.
```swift
let wrapper: IGDBWrapper = IGDBWrapper()
wrapper.userKey = "YOUR_API_KEY"
```

# How to use the wrapper
The wrapper has two "wrapping" functions and a lot of helper functions (one for each endpoint..)  
The two main functions are called `apiRequest` and `apiJsonRequest` and they handle all of the requests to the api.  
The class `APICalypse` handles the new querying language, so that you don't need to care about structure and syntax as much.

* `apiRequest`  
  This method handles IGDB generated proto classes which returns Data to be used to fill the appropriate class.  
  ```swift
  wrapper.apiRequest(endpoint: .GAMES, apicalypseQuery: "fields *;", dataResponse: { bytes in
            let games: [Proto_Game] = try! Proto_GameResult(serializedData: bytes) // This converts Binary to a struct
        }, errorResponse: { error in
            // Do Something
        })
  ```
  returns a list of Game objects.
  
* `apiJsonRequest`  
  This method return raw JSON (String) from the API.  
  ```swift
  wrapper.apiJsonRequest(endpoint: .GAMES, apicalypseQuery: "fields *;", dataResponse: { json in
              print(json)
          }, errorResponse: { error in
              // Do Something
          })
  ```
  returns a String.
  
* `APICalypse`  
  ```kotlin
  // Kotlin Example
  let apicalypse = APICalypse()
            .fields(fields: "*")
            .exclude(fields: "*")
            .limit(value: 10)
            .offset(value: 0)
            .search(searchQuery: "Halo")
            .sort(field: "release_dates.date", order: .ASCENDING)
            .where(query: "platforms = 48")
  ```
  Here are all of the options, this creates a query for you. To get a String query from APICalypse just add `.buildQuery()`.
  
__NOTE__  
These examples above are only here to show you how to use the "manual" part of the wrapper. This wrapper comes with complete functions for each endpoint in the API :) so you don't have to deal with the manual stuff..

There are two functions for each endpoint, one for classes and one for json, for quick access. The difference between them is the name see the examples below:  
```kotlin
// Example of functions in Kotlin
wrapper.games(apiCalypse: APICalypse(), result: ([Proto_Game]) -> (Void), errorResponse: (RequestException) -> (Void))
wrapper.platforms(apiCalypse: APICalypse(), result: ([Proto_Platforms]) -> (Void), errorResponse: (RequestException) -> (Void))
wrapper.genres(apiCalypse: APICalypse(), result: ([Proto_Genres]) -> (Void), errorResponse: (RequestException) -> (Void))
...
wrapper.jsonGames(apiCalypse: APICalypse(), result: (String) -> (Void), errorResponse: (RequestException) -> (Void))
wrapper.jsonPlatforms(apiCalypse: APICalypse(), result: (String) -> (Void), errorResponse: (RequestException) -> (Void))
wrapper.jsonGenres(apiCalypse: APICalypse(), result: (String) -> (Void), errorResponse: (RequestException) -> (Void))
...
```
## ImageBuilder
To simplify the process of building the image URLs for IGDB images there is a new function called `imageBuilder` which is a helping tool in requesting the perfect sized images for your project. The function requires you to get the `image_id` then set your desired size (resolution), set your desired image format (default is set to PNG).  
```swift

let image_id = "mnljdjtrh44x4snmierh"
let imageURL = imageBuilder(imageID: image_id, size: .SCREENSHOT_HUGE, imageType: .PNG)

/*
* Result: 
* imageURL = https://images.igdb.com/igdb/image/upload/t_screenshot_huge/mnljdjtrh44x4snmierh.png
*/
```

More information about images can be found [here](https://api-docs.igdb.com/#images)

## Exceptions
The wrapper returns an `RequestException` on every exception from the API. This exception hold three things:
* HTTP status code
* URL
* MSG, the message from the api

## Code Examples
* Request games from the API:
```swift
let wrapper = IGDBWrapper()
wrapper.userKey = "YOUR_API_KEY"

let apicalypse = APICalypse()
    .fields(fields: "*")
    .sort(field: "release_dates.date", order: .DESCENDING)

wrapper.games(apiCalypse: apicalypse, result: { games in
    // Do something..
}) { error in
    // Do something..
}
```
* Search in the API:
__NOTE__  
Search objects contain the objects from search ex: Characters, Collections, Games, People, Platforms, and Themes. 
```swift
let wrapper = IGDBWrapper()
wrapper.userKey = "YOUR_API_KEY"

let apicalypse = APICalypse()
    .search(searchQuery: "Halo")
    .fields(fields: "*")
    .sort(field: "release_dates.date", order: .ASCENDING)

wrapper.search(apiCalypse: apicalypse, result: { searchResults in
    // Do something..
}) { error in
    // Do something..
}
```
* Request filtered results:
```swift
let wrapper = IGDBWrapper()
wrapper.userKey = "YOUR_API_KEY"

let apicalypse = APICalypse()
    .fields(fields: "*")
    .sort(field: "release_dates.date", order: .DESCENDING)
    .where(query: "themes != 42")

wrapper.games(apiCalypse: apicalypse, result: { games in
    // Do something..
}) { error in
    // Do something..
}
```
## License
IGDB-SWIFT-API is available under the MIT license. See the LICENSE file for more info.
