//
//  AppDelegate.swift
//  reddift
//
//  Created by sonson on 2015/04/10.
//  Copyright (c) 2015年 sonson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject?) -> Bool {
        return OAuth2Authorizer.sharedInstance.receiveRedirect(url, completion:{(token:OAuth2Token?, error:NSError?) -> Void in
            if let token = token as OAuth2Token! {
                
//              let URL:NSURL = NSURL(string: "https://oauth.reddit.com/hot.json")!
//              var URLRequest:NSMutableURLRequest = NSMutableURLRequest(URL: URL)
//              URLRequest.setValue("bearer " + token.accessToken, forHTTPHeaderField:"Authorization")
//              URLRequest.HTTPMethod = "GET"
//              URLRequest.setUserAgentForReddit()
//              let session:NSURLSession = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
//              let task:NSURLSessionDataTask = session.dataTaskWithRequest(URLRequest, completionHandler: { (data:NSData!, response:NSURLResponse!, error:NSError!) -> Void in
//                  
//                  if let httpResponse:NSHTTPURLResponse = response as? NSHTTPURLResponse {
//                      println(httpResponse.allHeaderFields)
//                  }
//                  
//                  if let aData = data {
//                      var result:String = NSString(data: aData, encoding: NSUTF8StringEncoding) as! String
//                      println(result)
//                  }
//                  else {
//                  }
//              })
//              task.resume()
                
                token.profile({ (profile:UserProfile?, error:NSError?) -> Void in
                    if (error == nil) {
                        if let profile:UserProfile = profile as UserProfile? {
                            token.saveIntoKeychainWithName(profile.name)
                        }
                    }
                })
            }
        })
    }
}
