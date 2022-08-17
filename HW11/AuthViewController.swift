//
//  ViewController.swift
//  HW11
//
//  Created by Виктор Басиев on 17.08.2022.
//

import UIKit

class AuthViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "LOGIN"
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
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        return textField
    }()
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Login", for: .normal)
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
    private let forgotButton: UIButton = {
        let button = UIButton()
        button.setTitle("Fogot your password", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
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
        let button = UIButton()
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
        let button = UIButton()
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
//        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let footerSingUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sing Up", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
//        setupConstraint()
    }
    private func setView() {
        
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

}

//extension AuthViewController {
//    private func setupConstraint() {
//        NSLayoutConstraint.activate([

//        ])
//    }
//}

