//
//  FeedViewController.swift
//  VKontakte
//
//  Created by Valery Shel on 28.01.2021.
//

import UIKit

final class FeedViewController: UIViewController {
    
    weak var coordinator: FeedNavCoordinator?

    private lazy var createNewPostButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        button.roundCornersWithRadius(5)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .regular)
        button.addTarget(self, action: #selector(createNewPostButtonTouched), for: .touchUpInside)
        button.setTitle("Create new post", for: .normal)
        button.isUserInteractionEnabled = true
        return button
    }()
    
    private lazy var showCreatedPostButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        button.roundCornersWithRadius(5)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .regular)
        button.addTarget(self, action: #selector(openCreatedPostButtonTapped), for: .touchUpInside)
        button.setTitle("Show created post", for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupLayout()
    }

    
    private func setupLayout() {
        view.addSubviews(createNewPostButton, showCreatedPostButton)
        
        let constraints = [
            createNewPostButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createNewPostButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            createNewPostButton.heightAnchor.constraint(equalToConstant: 50),
            createNewPostButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            createNewPostButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),

            
            showCreatedPostButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showCreatedPostButton.topAnchor.constraint(equalTo: createNewPostButton.bottomAnchor, constant: 30),
            showCreatedPostButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            showCreatedPostButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            showCreatedPostButton.heightAnchor.constraint(equalToConstant: 50),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    
    @objc func createNewPostButtonTouched(sender:UIButton!) {
        coordinator?.showPost()
    }
    
    @objc func openCreatedPostButtonTapped(sender:UIButton!) {
        coordinator?.showPost()
    }
}


