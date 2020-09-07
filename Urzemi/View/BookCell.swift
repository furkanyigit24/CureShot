//
//  BookCell.swift
//  Urzemi
//
//  Created by Furkan Y. on 28.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

class BookCell: UICollectionViewCell {
    
    let profileButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.backgroundColor = .darkGray
        return pp
    }()
    let userLabel: UILabel = {
        let label = UILabel()
        label.text = "Dyt. Leyla IŞIK"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let imageView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        return view
    }()
    let informationLabel: UILabel = {
        let label = UILabel()
        label.text = "Domates ve maydonoz etkili birer sebzedir. Bağışıklık sisteminizi güçlendirir, hayat enerjinizi arttırır. blablabla"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 12)
        label.numberOfLines = 0
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let commentLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Yorum yap"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let likeLabel: UIButton = {
        let label = UIButton(type: .system)
        label.setImage(UIImage(named: "LikeButton")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(hexString: "#FFFFFF")
        self.layer.borderColor = UIColor(hexString: "#95EDB2").cgColor
        self.layer.borderWidth = 5
        self.layer.cornerRadius = 20
        addSubview(profileButton)
        profileButton.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
        profileButton.layer.cornerRadius = 15
        
        addSubview(userLabel)
        userLabel.anchor(top: topAnchor, left: profileButton.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 11, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(imageView)
        imageView.anchor(top: profileButton.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 130, height: 130)
        
        addSubview(informationLabel)
        informationLabel.anchor(top: userLabel.bottomAnchor, left: imageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 21, paddingLeft: 11, paddingBottom: 0, paddingRight: 5, width: 0, height: 0)
        
        addSubview(likeLabel)
        likeLabel.anchor(top: imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 7, paddingLeft: 11, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(commentLabel)
        commentLabel.anchor(top: imageView.bottomAnchor, left: likeLabel.rightAnchor, bottom: nil, right: nil, paddingTop: 13, paddingLeft: 27, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
