//
//  DetailViewController.swift
//  UISplitViewControllerExample
//
//  Created by Simran Preet Singh Narang on 2022-07-08.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    private let label: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Secondary"
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
    }
    
    func showValue(_ value: String?) {
        self.label.text = value
        title = value
    }
    
    private func setupSubviews() {
        self.setupLabel()
    }
    
    private func setupLabel() {
        self.view.addSubview(label)
        NSLayoutConstraint.activate([
            self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
    
}
