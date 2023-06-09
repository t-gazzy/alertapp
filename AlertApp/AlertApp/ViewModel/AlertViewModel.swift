//
//  AlertViewModel.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/09.
//

import Foundation
import SwiftUI

class AlertViewModel: ObservableObject {
    
    func setValue(value: String) -> Bool {
        guard let number = Int(value) else {
            Logger.error("set invalid value")
            return false
        }
        
        return true
    }
}
