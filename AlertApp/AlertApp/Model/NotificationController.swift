//
//  NotificationController.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/10.
//

import Foundation
import UserNotifications

class NotificationController {
    
    func requestAuthorization() {
        let center: UNUserNotificationCenter = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { granted, error in
            if granted {
                Logger.info("request allowed")
                return
            }
            Logger.error("not allowed")
        })
    }
    
    func generateNotification(minutes: Int) {
        let content: UNMutableNotificationContent = .init()
        content.title = "いつまでスマホいじってんだ？"
        content.body = "\(minutes)分経過したぞ"
        content.sound = UNNotificationSound.default
        let trigger: UNTimeIntervalNotificationTrigger = .init(timeInterval: 1, repeats: false)
        let request: UNNotificationRequest = .init(identifier: "Timer:\(minutes)minutes", content: content, trigger: trigger)
        
        let center: UNUserNotificationCenter = UNUserNotificationCenter.current()
        center.add(request) { error in
            if let error = error {
                Logger.error(error.localizedDescription)
            }
            Logger.info("local notification")
        }
    }
}
