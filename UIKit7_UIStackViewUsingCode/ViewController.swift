//
//  ViewController.swift
//  UIKit7_UIStackViewUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 18/11/24.
//

import UIKit

class ViewController: UIViewController {
    

    private let swiftbetaStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .leading
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftbetaStackView)
        
        NSLayoutConstraint.activate([
            swiftbetaStackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
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

