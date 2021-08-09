//
//  ViewController.swift
//  CounterApp-Delegate
//
//  Created by 今村京平 on 2021/08/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var countLabel: UILabel!

    private let presenter = CounterPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(self)
    }

    @IBAction private func countUp(_ sender: Any) {
        presenter.incrementCount()
    }

    @IBAction private func countDown(_ sender: Any) {
        presenter.decrementCount()
    }

    @IBAction func countReset(_ sender: Any) {
        presenter.resetCount()
    }
}

extension ViewController: CounterDelegate {
    func updateCount(count: Int) {
        countLabel.text = String(count)
    }
}
