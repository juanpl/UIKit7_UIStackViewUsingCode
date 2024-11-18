//
//  ViewController.swift
//  UIKit7_UIStackViewUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 18/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let swiftBetaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "In App Purchase"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
        return label
    }()

    private let swiftbetaStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftBetaLabel)
        view.addSubview(swiftbetaStackView)
        
        NSLayoutConstraint.activate([
            swiftBetaLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            swiftBetaLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            swiftBetaLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            
            swiftbetaStackView.topAnchor.constraint(equalTo: swiftBetaLabel.bottomAnchor, constant: 20),
            swiftbetaStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            swiftbetaStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        
        ["1.994€", "2.99€", "3.99€", "4.99€", "5.99€"].forEach { price in
            let button = UIButton(type: .system)
            var configuration = UIButton.Configuration.borderedTinted()
            configuration.title = price
            configuration.subtitle = "Subcrib"
            configuration.image = UIImage(systemName: "eurosign.circle.fill")
            configuration.imagePadding = 12
            configuration.baseBackgroundColor = .systemBlue
            button.configuration = configuration
            
            swiftbetaStackView.addArrangedSubview(button)
        }
        
        
        
    }


}

