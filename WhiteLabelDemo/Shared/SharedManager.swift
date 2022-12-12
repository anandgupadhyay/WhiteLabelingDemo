//
//  SharedManager.swift
//  WhiteLabelDemo
//
//  Created by Anand Upadhyay on 12/12/22.
//

import Foundation

class SharedManager {
    
    static let shared = SharedManager()
    var title : String!
    var addEnable: Bool!

    func loadData() {
        let bundleId = Bundle.main.bundleIdentifier
        if let path = Bundle.main.path(forResource: bundleId, ofType: "plist") {
            //CAUTION: We are not using best practices for simplicity. Using plain string as a key and force unwrapping is prone to errors.
            if let plistDict  = NSDictionary(contentsOfFile: path) {
                self.title = plistDict["AppTitle"] as? String ?? ""
                self.addEnable = plistDict["EnableAdd"] as? Bool ?? false
            }
        }
    }
    
    init() {
        
    }
}
