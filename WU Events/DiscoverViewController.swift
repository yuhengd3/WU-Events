//
//  DiscoverViewController.swift
//  WU Events
//
//  Created by Raj Thaker on 11/28/21.
//

import Foundation
import UIKit

class DiscoverViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    
    var theImageCache:[UIImage] = []
    var organizationList:[Organization] = []
    var userList:[User] = []
    
    @IBOutlet weak var discoverCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.init(red: 193, green: 244, blue: 255, alpha: 9), UIColor.purple.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        let sampleUser = User(firstName: "Kobe", lastName: "Bryant", userName: "kobeBryant", profilePic: UIImage(named: "kobe")!)
        let sampleOrg = Organization(name: "DSC", profilePic: UIImage(named: "dsc")!)
        userList.append(sampleUser)
        organizationList.append(sampleOrg)
        self.discoverCollection.delegate = self
        self.discoverCollection.dataSource = self
        self.discoverCollection.reloadData()
        
        
    
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section:Int) -> Int {
        return userList.count //Fix this when we pull from bacekend and add dropdown
    }
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"discoverCell", for: indexPath) as! DiscoverCell
        cell.cellImage.image = userList[indexPath.row].profilePic
        let fullName = userList[indexPath.row].firstName + " " + userList[indexPath.row].lastName
        cell.cellName.text = fullName
        return cell
    }
    
}
