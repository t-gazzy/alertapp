//
//  AlertViewModel.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/09.
//

import Foundation
import SwiftUI

class AlertViewModel: ObservableObject {
    
    private var _model: AlertModelProtocol
    
    init(_model: AlertModelProtocol? = nil) {
        if let m = _model {
            self._model = m
            return
        }
        self._model = AlertModel()
    }
    
    func setValue(value: String) -> Bool {
        guard let number = Int(value) else {
            Logger.error("set invalid value")
            return false
        }
        _model.delegate = self
        _model.startTimer(minutes: number)
        return true
    }
}

extension AlertViewModel: AlertModelDelegate {
    func timer() {
        Logger.info("delegate")
    }
}
