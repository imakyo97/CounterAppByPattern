//
//  Counter.swift
//  CounterApp-Delegate
//
//  Created by 今村京平 on 2021/08/09.
//

import Foundation

protocol CounterDelegate: AnyObject {
    func updateCount(count: Int)
}

class CounterPresenter {

    private weak var delegate: CounterDelegate?

    private var count = 0 {
        didSet {
            delegate?.updateCount(count: count)
        }
    }

    func attachView(_ delegate: CounterDelegate) {
        self.delegate = delegate
    }

    func detachView() {
        self.delegate = nil
    }

    func incrementCount() {
        count += 1
    }

    func decrementCount() {
        count -= 1
    }

    func resetCount() {
        count = 0
    }
}
