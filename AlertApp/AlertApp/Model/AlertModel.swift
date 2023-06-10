//
//  AlertModel.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/09.
//

import Foundation

protocol AlertModelDelegate: AnyObject {
    func timer()
}

class AlertModel {
    
    var _timer: Timer?
    weak var delegate: AlertModelDelegate?
    
    func startTimer(minutes: Int) {
        let seconds: Int = minutes * 60
        Logger.info("timer start: \(seconds) seconds")
        
        self._timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(seconds), repeats: false, block: {_ in
            Logger.info("\(seconds) seconds later")
            self.delegate?.timer()
        })
    }
}
