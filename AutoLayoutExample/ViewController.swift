//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by Matt Dias on 12/11/16.
//  Copyright © 2016 Matt Dias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var profileImage = UIImageView(image: #imageLiteral(resourceName: "profilePhoto"))
    var settingsButton = UIButton()
    var nameLabel = UILabel()
    var handleLabel = UILabel()
    var titleLabel = UILabel()
    var locationLabel = UILabel()
    var websiteButton = UIButton()
    var followersButton = UIButton()
    var followingButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Matt Dias"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit,
                                                                 target: nil,
                                                                 action: nil)
        self.view.backgroundColor = UIColor(red: 53/255, green: 53/255, blue: 53/255, alpha: 1)
        
        styleContent()
        setupConstraints()
    }

    private func styleContent() {
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = 43.5
        
        settingsButton.setImage(#imageLiteral(resourceName: "settingsIcon"), for: .normal)
        
        nameLabel.textColor = UIColor.white
        nameLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        nameLabel.text = "Matt Dias"

        
        handleLabel.textColor = UIColor.lightText
        handleLabel.text = "@mdiasdev"
        
        titleLabel.textColor = UIColor.lightText
        titleLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFontWeightMedium)
        titleLabel.text = "iOS Technical Lead at Zipcar"
        
        locationLabel.textColor = UIColor.lightText
        locationLabel.font = UIFont.italicSystemFont(ofSize: 17)
        locationLabel.text = "Boston, MA"
        
        websiteButton.setTitle("http://mattdias.com", for: .normal)
        
        followersButton.setTitle("14 FOLLOWERS", for: .normal)
        followersButton.backgroundColor = UIColor(colorLiteralRed: 64/255, green: 64/255, blue: 64/255, alpha: 1.0)
        followersButton.tintColor = UIColor.white
        
        followingButton.setTitle("40 FOLLOWING", for: .normal)
        followingButton.backgroundColor = UIColor(colorLiteralRed: 64/255, green: 64/255, blue: 64/255, alpha: 1.0)
        followingButton.tintColor = UIColor.white
    }
    
    private func setupConstraints() {
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(profileImage)
        
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(settingsButton)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(nameLabel)
        
        handleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(handleLabel)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(titleLabel)
        
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(locationLabel)
        
        websiteButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(websiteButton)

        followersButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(followersButton)
        
        followingButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(followingButton)
        
        self.view.addConstraint(NSLayoutConstraint(item: profileImage, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 80))
        self.view.addConstraint(NSLayoutConstraint(item: profileImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 87))
        self.view.addConstraint(NSLayoutConstraint(item: profileImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 87))
        self.view.addConstraint(NSLayoutConstraint(item: profileImage, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: settingsButton, attribute: .centerY, relatedBy: .equal, toItem: profileImage, attribute: .centerY, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: settingsButton, attribute: .trailing, relatedBy: .equal, toItem: profileImage, attribute: .leading, multiplier: 1, constant: -60))
        
        self.view.addConstraint(NSLayoutConstraint(item: nameLabel, attribute: .top, relatedBy: .equal, toItem: profileImage, attribute: .bottom, multiplier: 1, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: nameLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: handleLabel, attribute: .top, relatedBy: .equal, toItem: nameLabel, attribute: .bottom, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: handleLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: handleLabel, attribute: .bottom, multiplier: 1, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: locationLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: locationLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: websiteButton, attribute: .top, relatedBy: .equal, toItem: locationLabel, attribute: .bottom, multiplier: 1, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: websiteButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: followersButton, attribute: .top, relatedBy: .equal, toItem: websiteButton, attribute: .bottom, multiplier: 1, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: followersButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: followersButton, attribute: .trailing, relatedBy: .equal, toItem: followingButton, attribute: .leading, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: followingButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: followersButton, attribute: .height, relatedBy: .equal, toItem: followingButton, attribute: .height, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: followersButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.5, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: followingButton, attribute: .width, relatedBy: .equal, toItem: followersButton, attribute: .width, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: followingButton, attribute: .centerY, relatedBy: .equal, toItem: followersButton, attribute: .centerY, multiplier: 1, constant: 0
        ))
    }
}

