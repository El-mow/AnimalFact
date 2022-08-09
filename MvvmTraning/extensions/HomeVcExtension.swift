//
//  LoginScreenView.swift
//  MvvmTraning
//
//  Created by mobin on 6/10/22.
//

import Foundation
import UIKit
import SwiftUI


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
        view.backgroundColor = UIColor(red: 0.44, green: 0.64, blue: 0.60, alpha: 1.00)

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
         wayToSave_label.widthAnchor.constraint(lessThanOrEqualToConstant: 200 )
            .isActive = true
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
        
        self.view.addSubview(animal_collection)
        
        animal_collection.dataSource = self
        animal_collection.delegate = self
        animal_collection.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.cellId)
//        UIColor(red: 0.44, green: 0.64, blue: 0.60, alpha: 1.00)
        animal_collection.backgroundColor = .clear

        animal_collection.translatesAutoresizingMaskIntoConstraints = false
        animal_collection.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width ).isActive = true
        animal_collection.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height ).isActive = true
        animal_collection.topAnchor.constraint(equalTo: wayToSave_label.bottomAnchor, constant: 10).isActive = true
        animal_collection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    

        

    
       
        
    }
    
}

// collection view setup  and cliking events
extension HomeViewController: UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  StaticData.animalsCard.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.cellId, for: indexPath) as! CustomCell
        cell.data = StaticData.animalsCard[indexPath.row]
        
    
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow:CGFloat = 2
             let spacingBetweenCells:CGFloat = 16
             
             let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        let width = (animal_collection.bounds
                        .width - totalSpacing
        )/numberOfItemsPerRow
        
        let height = (animal_collection.bounds
                        .width - totalSpacing
        )/numberOfItemsPerRow + 30
        
      
        
        if indexPath.row % 2 == 0 {
            return CGSize(width: width, height: height + 20 )

        }else if indexPath.row % 3 == 0 {
            return CGSize(width: width, height: height + 40)

        }else {
            
            return CGSize(width: width , height: height  )

        }
                
        return CGSize(width: width, height: height )

        
       }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let arViewController = ArFilterViewController()
        arViewController.modalTransitionStyle = .crossDissolve
        arViewController.modalPresentationStyle = .popover
        self.present(arViewController,animated: true)
        
    }
    
}




    


 
