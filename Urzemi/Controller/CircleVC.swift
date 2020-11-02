//
//  FeedVC.swift
//  Urzemi
//
//  Created by Furkan Y. on 27.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"
private let headerIdentifier = "headerCell"
private let barIdentifier = "barCell"

class CircleVC: UICollectionViewController, UICollectionViewDelegateFlowLayout, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionHeadersPinToVisibleBounds = true // Sticky Header
        }
        navigationController?.navigationBar.isHidden = true // Navigation Contoller
        // Register cell classes
        self.collectionView!.register(CircleHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerIdentifier)
        self.collectionView!.register(BookCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView!.register(BarCell.self, forCellWithReuseIdentifier: barIdentifier)
        collectionView.contentInsetAdjustmentBehavior = .never // Header adjustment for full head-covarage(upper extension)
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
        let barCell = collectionView.dequeueReusableCell(withReuseIdentifier: barIdentifier, for: indexPath) as! BarCell
        // Configure the cell
        if (indexPath.row == 0){
            return barCell
        }
        else {
        return cell
        }
    }

    // MARK: - UICollectionViewFlowLayout
    // Header size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 86)
        
    }
    // Header on page
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentifier, for: indexPath) as! CircleHeader
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(indexPath.row == 0) {
            return CGSize(width: view.frame.width * 0.9555, height: CGFloat(158))
        }
        let width = view.frame.width * 0.9555
        let height = CGFloat(220)
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
}
