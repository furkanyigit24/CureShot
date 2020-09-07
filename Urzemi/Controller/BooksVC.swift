//
//  BooksVC.swift
//  Urzemi
//
//  Created by Furkan Y. on 28.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"
private let headerIdentifier = "headerCell"

class BooksVC: UICollectionViewController, UICollectionViewDelegateFlowLayout, UINavigationControllerDelegate, BookHeaderDelegate {
    
    let visualEffectView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .light)
        let view = UIVisualEffectView(effect: blurEffect)
        return view
    }()
    lazy var orderPopUp: OrderPopUp = {
        let view = OrderPopUp()
        view.backgroundColor = UIColor(hexString: "#E9EBFC")
        view.delegate = self
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionHeadersPinToVisibleBounds = true // Sticky Header
        }
        navigationController?.navigationBar.isHidden = true // Navigation Contoller
        // Register cell classes
        self.collectionView!.register(BookCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView!.register(BookHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerIdentifier)
        collectionView.contentInsetAdjustmentBehavior = .never // Header adjustment for full head-covarage(upper extension)
    }
    func handleFilterTapped(for cell: BookHeader) {
        print("Filter tapped Babe <3")
        
        if let topVC = UIApplication.getTopViewController() {
           topVC.view.addSubview(orderPopUp)
            orderPopUp.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 86, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 345)
        }
        view.addSubview(visualEffectView)
        visualEffectView.anchor(top: orderPopUp.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        self.collectionView.backgroundColor = UIColor(hexString: "#F0F0F0")
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BookCell
        // Configure the cell
    
        return cell
    }

    // MARK: - UICollectionViewFlowLayout
    // Header size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 86)
        
    }
    // Header on page
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentifier, for: indexPath) as! BookHeader
        header.delegate = self
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width * 0.9555
        let height = CGFloat(220)
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }

}
extension BooksVC: PopUpDelegate {
    func handleDismissal(for cell: OrderPopUp) {
        self.visualEffectView.removeFromSuperview()
        //self.orderPopUp.alpha = 0
        self.orderPopUp.removeFromSuperview()
    }
}
