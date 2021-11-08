//
//  AuthViewController.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/23/21.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView! {
        didSet{
            webView.navigationDelegate = self
        }
        
      
    extension ViewController: WKNavigationDelegate {
        func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
            
            guard let url = navigationResponse.response.url, url.path == "/blank.html", let fragment = url.fragment  else {
                decisionHandler(.allow)
                return
            }
            
            override func viewDidLoad() {
                           super.viewDidLoad()
                    
                    authorizeToVKAPI()
                       }
                
            func authorizeTVKAPI() {
                 
                 let params = fragment
                             .components(separatedBy: "&")
                             .map { $0.components(separatedBy: "=") }
                             .reduce([String: String]()) { result, param in
                                 var dict = result
                                 let key = param[0]
                                 let value = param[1]
                                 dict[key] = value
                                 return dict
                         }


             }
            
            let params = fragment
                .components(separatedBy: "&")
                .map { $0.components(separatedBy: "=") }
                .reduce([String: String]()) { result, param in
                    var dict = result
                    let key = param[0]
                    let value = param[1]
                    dict[key] = value
                    return dict
            }
            
            let token = params["access_token"]
            
            print(token)
            
            performSegue(withIdentifier: "showFriendSegue", sender: nil)
            

            decisionHandler(.cancel)
        }
    }

    guard let url = navigationResponse.response.url, url.path == "/blank.html", let fragment = url.fragment  else {
        decisionHandler(.allow)
        return
    }
    }
}
