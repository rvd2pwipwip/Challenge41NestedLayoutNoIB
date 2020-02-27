//
//  ViewController.swift
//  Challenge41NestedLayoutNoIB
//
//  Created by Herve Desrosiers on 2020-02-27.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGreenView()
        setupRedView()
    }
    
    private func setupGreenView() {
        view.addSubview(greenView)
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            greenView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            greenView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
    
    private func setupRedView() {
        greenView.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor),
            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 25),
            redView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -25),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.2)
        ])
    }
    
    private let greenView: UIView = {
        let gv = UIView()
        gv.translatesAutoresizingMaskIntoConstraints = false
        gv.backgroundColor = .green
        return gv
    }()
    
    private let redView: UIView = {
        let rv = UIView()
        rv.translatesAutoresizingMaskIntoConstraints = false
        rv.backgroundColor = .red
        return rv
    }()
    
}

