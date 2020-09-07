//
//  VegiesVC.swift
//  Urzemi
//
//  Created by Furkan Y. on 27.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

class VegiesVC: UIViewController {
    lazy var stickyView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#E9EBFC")
        return view
    }()
    let profileLabel: UILabel = {
        let label = UILabel()
        label.text = "Besinler"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 16)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let searchButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Besin ara", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#2C2C2C"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#EA7E7E").cgColor
        pp.layer.borderWidth = 1
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 25
        pp.layer.cornerRadius = 12.5
        return pp
    }()
    let vegiesButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Meyve ve Sebze", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#67DEB0").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 60
        pp.layer.cornerRadius = 15
        return pp
    }()
    let recipeForFoodButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Yemek Tarifleri", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#C366ED").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 60
        pp.layer.cornerRadius = 15
        return pp
    }()
    let recipeForDrinksButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("İçecek Tarifleri", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#856FE0").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 60
        pp.layer.cornerRadius = 15
        return pp
    }()
    let spiceAndSauceButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Baharatlar ve Soslar", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#43D7EA").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 60
        pp.layer.cornerRadius = 15
        return pp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        // Sticky View
        view.addSubview(stickyView)
        stickyView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 86)
        // Profile Label in StickHeader
        stickyView.addSubview(profileLabel)
        profileLabel.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 54, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        profileLabel.centerXAnchor.constraint(equalTo: stickyView.centerXAnchor).isActive = true
        // Search Button
        view.addSubview(searchButton)
        searchButton.anchor(top: stickyView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        // Stack View
        let stackView = UIStackView(arrangedSubviews: [vegiesButton, recipeForFoodButton, recipeForDrinksButton, spiceAndSauceButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        stackView.anchor(top: searchButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
}
