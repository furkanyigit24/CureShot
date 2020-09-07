//
//  CircleHeader.swift
//  Urzemi
//
//  Created by Furkan Y. on 29.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

class CircleHeader: UICollectionViewCell {
    
    lazy var stickyView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#E9EBFC")
        return view
    }()
    let urzeniLabel: UILabel = {
        let label = UILabel()
        label.text = "URZENI"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 19)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let videoButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setImage(UIImage(named: "VideoImage")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return pp
    }()
    lazy var messageButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setImage(UIImage(named: "MessageImage")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return pp
    }()
    let informationButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setImage(UIImage(named: "Information")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return pp
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(stickyView)
        stickyView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        stickyView.addSubview(urzeniLabel)
        urzeniLabel.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 54, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        urzeniLabel.centerXAnchor.constraint(equalTo: stickyView.centerXAnchor).isActive = true
        
        stickyView.addSubview(videoButton)
        videoButton.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: stickyView.rightAnchor, paddingTop: 54, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)
        
        stickyView.addSubview(messageButton)
        messageButton.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: videoButton.leftAnchor, paddingTop: 54, paddingLeft: 0, paddingBottom: 0, paddingRight: 7, width: 0, height: 0)
        
        stickyView.addSubview(informationButton)
        informationButton.anchor(top: stickyView.topAnchor, left: stickyView.leftAnchor, bottom: nil, right: nil, paddingTop: 55, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
