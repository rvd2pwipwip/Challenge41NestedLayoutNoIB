//
//  ViewController.swift
//  Challenge41NestedLayoutNoIB
//
//  Created by Herve Desrosiers on 2020-02-27.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let padding: CGFloat = 50
    private let spacing: CGFloat = 25
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(greenView)
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            greenView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            greenView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
            redView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor),
            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: spacing),
            redView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -spacing),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.2)
        ])
    }

    private let greenView = UIView.makeView(color: .green)
    private let redView = UIView.makeView(color: .red)
    
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}

