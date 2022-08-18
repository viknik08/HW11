//
//  ViewController.swift
//  HW11
//
//  Created by Виктор Басиев on 17.08.2022.
//

import UIKit

class AuthViewController: UIViewController {
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter you login"
        textField.borderStyle = .roundedRect
        textField.setLeftIcon(UIImage.init(systemName: "person.fill")!)
        return textField
    }()
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter you password"
        textField.setLeftIcon(UIImage.init(systemName: "lock.fill")!)
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        return textField
    }()
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
//        button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let forgotButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
//        button.setTitleColor(.lightGray, for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.addTarget(self, action: #selector(forgotButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let socialNetworkLabel: UILabel = {
        let label = UILabel()
        label.text = "or conect whith"
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .lightGray
        button.setTitle("Facebook", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
//        button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let twitterButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.setTitle("Twitter", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
//        button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let footerSingUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Don`t have account?"
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let footerSingUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sing Up", for: .normal)
        button.tintColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var stackViewTextField = UIStackView()
    private var stackViewSocialNetworkButton = UIStackView()
    private var stackViewFooter = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()
        setupConstraint()
    }
    private func setView() {
        setupGradient()
        stackViewTextField = UIStackView(arrangedSubviews: [loginTextField, passwordTextField],
                                         axis: .vertical,
                                         spasing: 10,
                                         distribution: .fillProportionally)
        stackViewSocialNetworkButton = UIStackView(arrangedSubviews: [facebookButton, twitterButton],
                                                 axis: .horizontal,
                                                 spasing: 10,
                                                 distribution: .fillProportionally)
        stackViewFooter = UIStackView(arrangedSubviews: [footerSingUpLabel, footerSingUpButton],
                                      axis: .horizontal,
                                      spasing: 5,
                                      distribution: .equalCentering)

        view.addSubview(loginLabel)
        view.addSubview(stackViewTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotButton)
        view.addSubview(socialNetworkLabel)
        view.addSubview(stackViewSocialNetworkButton)
        view.addSubview(stackViewFooter)
        
    }
    private func setupGradient() {
        let color3 = UIColor.blue.cgColor
        let color4 = UIColor.white.cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [color3, color4]
        gradientLayer.startPoint = CGPoint(x: 0.2, y: -0.2)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.5)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    @objc func forgotButtonPressed() {
        print("forgot button pressed")
    }

}

extension AuthViewController {
    private func setupConstraint() {
        NSLayoutConstraint.activate([
                
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),

            stackViewTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 50),
            stackViewTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackViewTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackViewTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            loginButton.topAnchor.constraint(equalTo: stackViewTextField.bottomAnchor, constant: 50),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            
            forgotButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            
            socialNetworkLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            socialNetworkLabel.bottomAnchor.constraint(equalTo: stackViewSocialNetworkButton.topAnchor, constant: -30),
            
            stackViewSocialNetworkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackViewSocialNetworkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackViewSocialNetworkButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackViewSocialNetworkButton.bottomAnchor.constraint(equalTo: stackViewFooter.topAnchor, constant: -30),
            
            stackViewFooter.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackViewFooter.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -30),
            
        ])
    }
}

