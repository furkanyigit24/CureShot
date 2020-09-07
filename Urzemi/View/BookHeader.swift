//
//  BookHeader.swift
//  Urzemi
//
//  Created by Furkan Y. on 29.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

class BookHeader: UICollectionViewCell {
    
    var delegate: BookHeaderDelegate?
    
    lazy var stickyView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#E9EBFC")
        return view
    }()
    let informationLabel: UILabel = {
        let label = UILabel()
        label.text = "Bilgi"
        label.font = UIFont.init(name: "SFProText-SemiBold", size: 19)
        label.textColor = UIColor(hexString: "#000000")
        return label
    }()
    let orderButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.setImage(UIImage(named: "Order")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return pp
    }()
    lazy var filterButton: UIButton = {
        let pp = UIButton(type: .system)
        pp.addTarget(self, action: #selector(handleFilterTapped), for: .touchUpInside)
        pp.setImage(UIImage(named: "Filter")?.withRenderingMode(.alwaysOriginal), for: .normal)
        return pp
    }()
    override init(frame: CGRect) {
    super.init(frame: frame)
        addSubview(stickyView)
        stickyView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        stickyView.addSubview(informationLabel)
        informationLabel.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 54, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        informationLabel.centerXAnchor.constraint(equalTo: stickyView.centerXAnchor).isActive = true
        
        stickyView.addSubview(filterButton)
        filterButton.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: stickyView.rightAnchor, paddingTop: 54, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 0)

        stickyView.addSubview(orderButton)
        orderButton.anchor(top: stickyView.topAnchor, left: nil, bottom: nil, right: filterButton.leftAnchor, paddingTop: 54, paddingLeft: 0, paddingBottom: 0, paddingRight: 7, width: 0, height: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: -- Handling Operations
    @objc func handleFilterTapped() {
        delegate?.handleFilterTapped(for: self)
    }
}
