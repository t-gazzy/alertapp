//
//  AlertViewModel.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/09.
//

import Foundation
import SwiftUI

class AlertViewModel: ObservableObject {
    
    private var _model: AlertModel = .init()
    
    func setValue(value: String) -> Bool {
        guard let number = Int(value) else {
            Logger.error("set invalid value")
            return false
        }
        _model.startTimer(minutes: number)
        return true
    }
}
