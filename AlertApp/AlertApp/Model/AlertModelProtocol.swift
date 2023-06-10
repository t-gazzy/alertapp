//
//  AlertModelProtocol.swift
//  AlertApp
//
//  Created by takemasa kaji on 2023/06/10.
//

import Foundation

protocol AlertModelProtocol {
    var delegate: AlertModelDelegate? { get set }
    func startTimer(minutes: Int)
}
