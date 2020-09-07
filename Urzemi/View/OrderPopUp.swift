//
//  OrderPopUp.swift
//  Urzemi
//
//  Created by Furkan Y. on 29.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

class OrderPopUp: UIView {
    
    var delegate: PopUpDelegate?
    
    let informationLabel: UILabel = {
        let label = UILabel()
        label.text = "Sırala"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 19)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    
    let cancelButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.addTarget(self, action: #selector(handleDismissal), for: .touchUpInside)
        pp.setImage(UIImage(named: "CancelButton")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return pp
    }()
    lazy var popularButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Gündemdekiler", for: .normal)
        pp.translatesAutoresizingMaskIntoConstraints = false
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#FD5959").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 38
        pp.layer.cornerRadius = 15
        return pp
    }()
    let commentCountDecreasedButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Yorum sayısı (azalan)", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#FAAB2B").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 38
        pp.layer.cornerRadius = 15
        return pp
    }()
    let commentCountIncreasedButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Yorum sayısı (artan)", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#6CFD59").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 38
        pp.layer.cornerRadius = 15
        return pp
    }()
    let likeCountDecreasedButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Begeni sayısı (azalan)", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#59FDE4").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 38
        pp.layer.cornerRadius = 15
        return pp
    }()
    let likeCountIncreasedButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("Begeni sayısı (artan)", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#5979FD").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 38
        pp.layer.cornerRadius = 15
        return pp
    }()
    let starCountButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setTitle("En fazla yıldızlanan", for: .normal)
        pp.titleLabel?.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        pp.setTitleColor(UIColor(hexString: "#000000"), for: UIControl.State.normal)
        pp.layer.borderColor = UIColor(hexString: "#F759FD").cgColor
        pp.layer.borderWidth = 3
        pp.backgroundColor = UIColor(hexString: "#FFFFFF")
        pp.frame.size.height = 38
        pp.layer.cornerRadius = 15
        return pp
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(informationLabel)
        informationLabel.anchor(top: topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        informationLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(cancelButton)
        cancelButton.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 14, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        let stackView = UIStackView(arrangedSubviews: [popularButton, commentCountDecreasedButton, commentCountIncreasedButton, likeCountDecreasedButton, likeCountIncreasedButton, starCountButton])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        addSubview(stackView)
        stackView.anchor(top: informationLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: -- Handling Operations
    @objc func handleDismissal() {
        delegate?.handleDismissal(for: self)
        print("CancelHandled")
    }
}
