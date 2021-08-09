//
//  ViewController.swift
//  CounterApp-Callback
//
//  Created by 今村京平 on 2021/08/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var countLabel: UILabel!

    private var viewModel: CounterViweModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        viewModel = CounterViweModel()
    }

    @IBAction private func countUp(_ sender: Any) {
        viewModel.incrementCount(callback: { [weak self] in
            self?.updateCountLabel($0)
        })
    }

    @IBAction private func countDown(_ sender: Any) {
        viewModel.decrementCount(callback: { [weak self] in
            self?.updateCountLabel($0)
        })
    }

    @IBAction private func countReset(_ sender: Any) {
        viewModel.resetCount(callback: {[weak self] in
            self?.updateCountLabel($0)
        })
    }

    private func updateCountLabel(_ count: Int) {
        countLabel.text = String(count)
    }
}

