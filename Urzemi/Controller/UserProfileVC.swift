//
//  WardrobeVC.swift
//  Urzemi
//
//  Created by Furkan Y. on 27.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

class UserProfileVC: UIViewController {
    
    // MARK: - Properties
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.contentInsetAdjustmentBehavior = .never
        view.frame = self.view.bounds
        view.contentSize = contentViewSize
        view.autoresizingMask = .flexibleHeight
        view.bounces = true
        return view
    }()
    lazy var containerView: UIView = {
        let view = UIView()
        view.frame = view.bounds
        view.frame.size = contentViewSize
        return view
    }()
    lazy var stickyView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#E9EBFC")
        return view
    }()
    let profileLabel: UILabel = {
        let label = UILabel()
        label.text = "Profil"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 16)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let threeDotsButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setImage(UIImage(named: "ThreeDots")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return pp
    }()
    let profileButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.backgroundColor = .darkGray
        return pp
    }()
    let userLabel: UILabel = {
        let label = UILabel()
        label.text = "kursaterenuzun"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let horizontalLine1: UIView = {
        let hl = UIView()
        hl.backgroundColor = UIColor(hexString: "#707070")
        return hl
    }()
    let followingLabel: UIView = {
        let label = UILabel()
        label.text = "Takip edilenler"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let savedLabel: UIView = {
        let label = UILabel()
        label.text = "Kaydedilenler"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let followingNumberLabel: UIView = {
        let label = UILabel()
        label.text = "12300"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#707070")
        return label
    }()
    let savedNumberLabel: UIView = {
        let label = UILabel()
        label.text = "12300"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#707070")
        return label
    }()
    let horizontalLine2: UIView = {
        let hl = UIView()
        hl.backgroundColor = UIColor(hexString: "#707070")
        return hl
    }()
    let measurementsButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Ölçümleriniz", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#FF4646").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 50
        pp.layer.cornerRadius = 15
        return pp
    }()
    let programsButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Programlarınız", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#E06FDC").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 50
        pp.layer.cornerRadius = 15
        return pp
    }()
    let graphicsButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Grafikleriniz", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#856FE0").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 50
        pp.layer.cornerRadius = 15
        return pp
    }()
    let appointmentsButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Randevularınız", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#6FBDE0").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 50
        pp.layer.cornerRadius = 15
        return pp
    }()
    let consultancyButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Danışmanlık Formunuz", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#6FE078").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 50
        pp.layer.cornerRadius = 15
        return pp
    }()
    let horizontalLine3: UIView = {
        let hl = UIView()
        hl.backgroundColor = UIColor(hexString: "#707070")
        return hl
    }()
    let personalInformationLabel: UILabel = {
        let label = UILabel()
        label.text = "Kişisel Bilgiler"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 19)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let nameSurnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Ad - Soyad : Kürşat Eren Uzun"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let ageLabel: UILabel = {
        let label = UILabel()
        label.text = "Yaş : 25"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let weightLabel: UILabel = {
        let label = UILabel()
        label.text = "Kilo : 82"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let heightLabel: UILabel = {
        let label = UILabel()
        label.text = "Boy : 173"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let horizontalLine4: UIView = {
        let hl = UIView()
        hl.backgroundColor = UIColor(hexString: "#707070")
        return hl
    }()
    let contactInformationLabel: UILabel = {
        let label = UILabel()
        label.text = "İletişim Bilgileri"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 19)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "Telefon : 5434535561"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Telefon : 5434535561"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let addressLabel: UILabel = {
        let label = UILabel()
        label.text = "Adres : Samsun"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let instagramLabel: UILabel = {
        let label = UILabel()
        label.text = "Instagram : erenzn"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let horizontalLine5: UIView = {
        let hl = UIView()
        hl.backgroundColor = UIColor(hexString: "#707070")
        return hl
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewComponents()
    }
    // MARK: - Configure View Components
    func configureViewComponents() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        // Scroll View
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        // Sticky Header
        containerView.addSubview(stickyView)
        stickyView.anchor(top: containerView.topAnchor, left: containerView.leftAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 86)
        // Profile Label in StickHeader
        stickyView.addSubview(profileLabel)
        profileLabel.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 54, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        profileLabel.centerXAnchor.constraint(equalTo: stickyView.centerXAnchor).isActive = true
        // Three Dots in StickyHeader
        stickyView.addSubview(threeDotsButton)
        threeDotsButton.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: stickyView.rightAnchor, paddingTop: 60, paddingLeft: 0, paddingBottom: 0, paddingRight: 15, width: 0, height: 0)
        // Profile Button
        containerView.addSubview(profileButton)
        profileButton.anchor(top: stickyView.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: nil, paddingTop: 9, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        profileButton.layer.cornerRadius = 40
        // User Label
        containerView.addSubview(userLabel)
        userLabel.anchor(top: stickyView.bottomAnchor, left: profileButton.rightAnchor, bottom: nil, right: nil, paddingTop: 9, paddingLeft: 19, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        // horizontal Line
        containerView.addSubview(horizontalLine1)
        horizontalLine1.anchor(top: userLabel.bottomAnchor, left: profileButton.rightAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 3, paddingLeft: 19, paddingBottom: 0, paddingRight: 15, width: 0, height: 1)
        // Following and Saved Labels
        let followingSavedStack = UIStackView(arrangedSubviews: [followingLabel, savedLabel])
        followingSavedStack.axis = .horizontal
        followingSavedStack.spacing = 73
        containerView.addSubview(followingSavedStack)
        followingSavedStack.anchor(top: horizontalLine1.bottomAnchor, left: profileButton.rightAnchor, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 38, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        // FollowingNumber and SavedNumber Labels
        let followingSavedNumberStack = UIStackView(arrangedSubviews: [followingNumberLabel, savedNumberLabel])
        followingSavedNumberStack.axis = .horizontal
        followingSavedNumberStack.spacing = 120
        containerView.addSubview(followingSavedNumberStack)
        followingSavedNumberStack.anchor(top: followingSavedStack.bottomAnchor, left: profileButton.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 47, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        // horizontal Line 2
        containerView.addSubview(horizontalLine2)
        horizontalLine2.anchor(top: followingSavedNumberStack.bottomAnchor, left: profileButton.rightAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 9.5, paddingLeft: 19, paddingBottom: 0, paddingRight: 15, width: 0, height: 1)
        // Stack View
        let stackView = UIStackView(arrangedSubviews: [measurementsButton, programsButton, graphicsButton, appointmentsButton, consultancyButton])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        containerView.addSubview(stackView)
        stackView.anchor(top: horizontalLine2.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 44.5, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 0, height: 0)
        // horizontal Line 3
        containerView.addSubview(horizontalLine3)
        horizontalLine3.anchor(top: stackView.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 23.5, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 1)
        // Personal Information
        containerView.addSubview(personalInformationLabel)
        personalInformationLabel.anchor(top: horizontalLine3.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: nil, paddingTop: 4.5, paddingLeft: 19, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        // StackView for Personal Info
        let personalStackView = UIStackView(arrangedSubviews: [nameSurnameLabel, ageLabel, weightLabel, heightLabel])
        personalStackView.axis = .vertical
        personalStackView.spacing = 5
        personalStackView.distribution = .fillEqually
        containerView.addSubview(personalStackView)
        personalStackView.anchor(top: personalInformationLabel.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 0, paddingRight: 12, width: 0, height: 0)
        // horizontal Line 4
        containerView.addSubview(horizontalLine4)
        horizontalLine4.anchor(top: personalStackView.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 5.5, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 1)
        // Personal Information
        containerView.addSubview(contactInformationLabel)
        contactInformationLabel.anchor(top: horizontalLine4.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: nil, paddingTop: 4.5, paddingLeft: 19, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        // StackView for Contact Info
        let contactStackView = UIStackView(arrangedSubviews: [phoneLabel, emailLabel, addressLabel, instagramLabel])
        contactStackView.axis = .vertical
        contactStackView.spacing = 5
        contactStackView.distribution = .fillEqually
        containerView.addSubview(contactStackView)
        contactStackView.anchor(top: contactInformationLabel.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 0, paddingRight: 12, width: 0, height: 0)
        // horizontal Line 5
        containerView.addSubview(horizontalLine5)
        horizontalLine5.anchor(top: contactStackView.bottomAnchor, left: containerView.leftAnchor, bottom: nil, right: containerView.rightAnchor, paddingTop: 5.5, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 1)
    }
}

