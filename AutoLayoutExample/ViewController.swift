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
    }
}

