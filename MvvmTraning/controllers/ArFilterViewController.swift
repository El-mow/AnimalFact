//
//  ArFilterViewController.swift
//  MvvmTraning
//
//  Created by mobin on 8/7/22.
//

import UIKit

class ArFilterViewController: UIViewController    {
    
    let names = ["ali","hassan", "jafar", "abbas"]
    lazy var  emailTextField: UITextField = {
       let textField = UITextField()
       textField.placeholder = "EMAIL"
        textField.frame = CGRect(x: 50, y: 50, width: 300, height: 300)
       return textField
   }()
    
    lazy var snapCollectionView: UICollectionView = {
          let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 4.0
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 4.0
        layout.sectionInset = UIEdgeInsets(top: 4.0, left: 4.0, bottom: 4.0, right: 4.0)
        
          let collectionView = UICollectionView(frame: CGRect(x: 30, y: 40, width: 300, height: 40),
          collectionViewLayout: layout)
        
          collectionView.delegate = self
          collectionView.dataSource = self
        
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.cellId)

        collectionView.backgroundColor = .orange
          return collectionView
      }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        snapCollectionView.translatesAutoresizingMaskIntoConstraints = true
        
      
        
        view.backgroundColor  = .yellow
        view.addSubview(snapCollectionView)

        

    }

}

extension ArFilterViewController : UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.cellId, for: indexPath) as! CustomCell
        cell.name_txt.text = names[indexPath.row]
        cell
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                
        return CGSize(width: 50, height: 50 )

        
       }
    
    
    
}
