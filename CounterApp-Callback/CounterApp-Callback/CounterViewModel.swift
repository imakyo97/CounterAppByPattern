//
//  CounterViewModel.swift
//  CounterApp-Callback
//
//  Created by 今村京平 on 2021/08/09.
//

import Foundation

struct CounterViweModel {

    private(set) var count = 0

    mutating func incrementCount(callback: (Int) -> ()) {
        count += 1
        callback(count)
    }

    mutating func decrementCount(callback: (Int) -> ()) {
        count -= 1
        callback(count)
    }

    mutating func resetCount(callback: (Int) -> ()) {
        count = 0
        callback(count)
    }
}
