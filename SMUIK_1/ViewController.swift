//
//  ViewController.swift
//  SMUIK_1
//
//  Created by Andrei Kovryzhenko on 01.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var gradientView = UIView()
    private lazy var gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(gradientView)
        setUpGradientView()
        setUpConstraint()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setUpGradientLayer()
    }

    private func setUpGradientView() {
        gradientView.layer.shadowColor = UIColor.black.cgColor
        gradientView.layer.shadowOpacity = 0.7
        gradientView.layer.shadowOffset = CGSize(width: 10, height: 15)
        gradientView.layer.shadowRadius = 12
    }
    
    private func setUpGradientLayer() {
        gradientView.layer.addSublayer(gradientLayer)
        gradientLayer.cornerRadius = 12
        gradientLayer.colors = [UIColor.systemMint.cgColor, UIColor.red.cgColor]
        gradientLayer.frame = gradientView.bounds
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
    }
    
    private func setUpConstraint() {
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gradientView.widthAnchor.constraint(equalToConstant: 150),
            gradientView.heightAnchor.constraint(equalToConstant: 150),
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
