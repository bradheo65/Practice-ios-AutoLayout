//
//  ViewController.swift
//  AutoLayout
//
//  Created by brad on 2022/12/23.
//

import UIKit

final class ViewController: UIViewController {
    
    var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var phoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var birthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [profileImageView, nameLabel, phoneLabel, birthLabel, descriptionTextView].forEach { myViews in
            view.addSubview(myViews)
        }
        
        setData()
        setLayout()
    }
    
    func setData() {
        profileImageView.image = UIImage(systemName: "person.fill")
        nameLabel.text = "nameLabel"
        phoneLabel.text = "phoneLabel"
        birthLabel.text = "birthLabel"
        descriptionTextView.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
    }
    
    func setLayout() {
        profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                              constant: 10).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                                                  constant: 10).isActive = true
        
        let profileImageViewWidthConstraint = profileImageView.widthAnchor.constraint(equalTo: view.widthAnchor,
                                                                                      multiplier: 0.3)
        profileImageViewWidthConstraint.priority = UILayoutPriority(750)
        profileImageViewWidthConstraint.isActive = true
        
        profileImageView.widthAnchor.constraint(lessThanOrEqualToConstant: 150).isActive = true
        
        profileImageView.heightAnchor.constraint(equalTo: profileImageView.widthAnchor,
                                                 multiplier: 1.0).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor,
                                           constant: 10).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                                            constant: -10).isActive = true
        
        phoneLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        phoneLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        phoneLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
        
        birthLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        birthLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        birthLabel.bottomAnchor.constraint(equalTo: profileImageView.bottomAnchor).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor,
                                                 constant: 10).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
    }
}

