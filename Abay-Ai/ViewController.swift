//
//  ViewController.swift
//  Abay-Ai
//
//  Created by Raikhan Khassenova on 25/06/2017.
//  Copyright © 2017 Raikhan Khassenova. All rights reserved.
//

import UIKit
import Foundation
import Alamofire


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://story-generator-169112.appspot.com/api/v1/get_questions?number=2").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
}

