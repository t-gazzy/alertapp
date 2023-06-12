//
//  AlertViewModel.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/09.
//

import Foundation
import SwiftUI

class AlertViewModel: NSObject, ObservableObject {
    
    private var _model: AlertModelProtocol
    private var _notification: NotificationController = .init()
    
    init(_model: AlertModelProtocol? = nil) {
        if let m = _model {
            self._model = m
            return
        }
        self._model = AlertModel()
        _notification.requestAuthorization()
    }
    
    func setValue(value: String) -> Bool {
        guard let number = Int(value) else {
            Logger.error("set invalid value")
            return false
        }
        guard number > 0 else {
            Logger.error("set invalid value")
            return false
        }
        _model.delegate = self
        _model.startTimer(minutes: number)
        return true
    }
}

extension AlertViewModel: AlertModelDelegate {
    func timer(minutes: Int) {
        Logger.info("delegate")
        _notification.generateNotification(minutes: minutes)
    }
}

extension AlertViewModel: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}
