//
//  Logger.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/09.
//

import Foundation

class Logger {
    class func debug(_ text: String) {
        print("[debug] \(text)")
    }
    
    class func info(_ text: String) {
        print("[info] \(text)")
    }
    
    class func error(_ text: String) {
        print("[error] \(text)")
    }
}
