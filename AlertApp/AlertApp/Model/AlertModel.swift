//
//  AlertModel.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/09.
//

import Foundation

class AlertModel {
    
    var _timer: Timer?
    
    func startTimer(minutes: Int) {
        let seconds: Int = minutes * 60
        Logger.info("timer start: \(seconds) seconds")
        
        DispatchQueue.global().async {
            self._timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(seconds), repeats: false, block: {_ in
                Logger.info("timer start: \(seconds) seconds")
            })
        }
    }
}
