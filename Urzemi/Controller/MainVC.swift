//
//  MainVC.swift
//  Urzemi
//
//  Created by Furkan Y. on 27.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import UIKit

class MainVC: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        configureViewControllers()
    }
    
    func configureViewControllers() {
        
        // home feed controller
        guard let circleImage = UIImage(named: "Circle")?.withRenderingMode(.alwaysOriginal) else { return }
        guard let redStarImage = UIImage(named: "DarkCircle")?.withRenderingMode(.alwaysOriginal) else { return }
        let feedVC = constructNavController(unselectedImage: circleImage, selectedImage:
            redStarImage, rootViewController: CircleVC(collectionViewLayout: UICollectionViewFlowLayout()))
        // information feed controller
        guard let booksImage = UIImage(named: "Books")?.withRenderingMode(.alwaysOriginal) else { return }
        guard let darkBooksImage = UIImage(named: "DarkBooks")?.withRenderingMode(.alwaysOriginal) else { return }
        let combineVC = constructNavController(unselectedImage: booksImage, selectedImage: darkBooksImage, rootViewController: BooksVC(collectionViewLayout:UICollectionViewFlowLayout()))
        // vegies controller
        guard let vegiesImage = UIImage(named: "Vegies")?.withRenderingMode(.alwaysOriginal) else { return }
        guard let darkVegiesImage = UIImage(named: "DarkVegies")?.withRenderingMode(.alwaysOriginal) else { return }
        let vegiesVC = constructNavController(unselectedImage: vegiesImage, selectedImage: darkVegiesImage, rootViewController: VegiesVC())
        // profile controller
        guard let profileImage = UIImage(named: "Profile")?.withRenderingMode(.alwaysOriginal) else { return }
        guard let darkProfileImage = UIImage(named: "DarkProfile")?.withRenderingMode(.alwaysOriginal) else { return }
        let wardrobeVC = constructNavController(unselectedImage: profileImage, selectedImage: darkProfileImage, rootViewController: UserProfileVC())
        
        // view controllers to be added to tab controller
        viewControllers = [feedVC, combineVC, vegiesVC, wardrobeVC]
        
    }
    // construct navigation controllers
    func constructNavController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController = UIViewController()) -> UINavigationController {
        
        // construct nav controller
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.image = unselectedImage
        navController.tabBarItem.selectedImage = selectedImage
        navController.navigationBar.tintColor = .black
        
        // return nav controller
        return navController
    }
}
