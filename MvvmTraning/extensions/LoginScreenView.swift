//
//  LoginScreenView.swift
//  MvvmTraning
//
//  Created by mobin on 6/10/22.
//

import Foundation
import UIKit



extension HomeViewController {
    var screen_height : CGFloat{
        get{
            return view.frame.size.height
        }
    }
    
    var screen_width: CGFloat{
        get {
            return view.frame.size.width
        }
    }
    func initView(){

        view.addSubview(goodmoring_label)
         goodmoring_label.translatesAutoresizingMaskIntoConstraints = false
         goodmoring_label.frame.size.width = 100
         goodmoring_label.frame.size.height = 40
         goodmoring_label.text = "GoodMorning"
        
         goodmoring_label.topAnchor.constraint(equalTo:  view.topAnchor , constant: 70).isActive = true
         goodmoring_label.leftAnchor.constraint(equalTo:  view.leftAnchor , constant: 40).isActive = true
         goodmoring_label.widthAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive = true
         goodmoring_label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
         setUpTitleTexts()
         setUpImageProfile()
         setUpViewCollection()
        
        

    }
    
    

    
    
    func setUpTitleTexts(){
        view.addSubview(theBest_label)
        view.addSubview(wayToSave_label)

         theBest_label.translatesAutoresizingMaskIntoConstraints = false
         theBest_label.topAnchor.constraint(greaterThanOrEqualTo: goodmoring_label.bottomAnchor , constant: 40).isActive = true
         theBest_label.leftAnchor.constraint(lessThanOrEqualTo: view.leftAnchor, constant: 40).isActive = true
        
        
         wayToSave_label.translatesAutoresizingMaskIntoConstraints = false
         wayToSave_label.widthAnchor.constraint(lessThanOrEqualToConstant: 200 ).isActive = true
         wayToSave_label.topAnchor.constraint(greaterThanOrEqualTo: theBest_label.bottomAnchor, constant: 10).isActive = true
         wayToSave_label.leftAnchor.constraint(lessThanOrEqualTo: view.leftAnchor, constant: 40).isActive = true
         wayToSave_label.lineBreakMode = .byTruncatingMiddle
         wayToSave_label.numberOfLines = 2
        
    }
    
    func setUpImageProfile(){
        view.addSubview(imageProfile)
        
         imageProfile.image = .add
         imageProfile.translatesAutoresizingMaskIntoConstraints = false
         imageProfile.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
         imageProfile.leftAnchor.constraint(lessThanOrEqualTo: view.leftAnchor, constant: screen_width - 60 ).isActive = true
        
    }
    
    func setUpViewCollection() {
        view.addSubview(animal_collection ?? UICollectionView())
        
        animal_collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        animal_collection.backgroundColor = UIColor.gray
        animal_collection.center = view.center

        
        
    }
    
}


extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return  animal_names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let animalCell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        animalCell.backgroundColor = .brown
        
        return animalCell
    }
    
}



extension HomeViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       print("User tapped on item \(indexPath.row)")
    }
}



    


 
