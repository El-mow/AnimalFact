//
//  ViewController.swift
//  MvvmTraning
//
//  Created by mobin on 3/17/22.
//

import UIKit
import CardSlider



class HomeViewController: UIViewController {
    let layout_animal: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    var animal_names = ["horse","Dog","hipo","lion","dark knight"]
    
    let imageProfile: UIImageView = {
      let imageProfile = UIImageView()
        imageProfile.frame.size.width = UIScreen.main.bounds.width * 0.4
        imageProfile.frame.size.height = UIScreen.main.bounds.height * 0.4
       return imageProfile
        
    }()
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "EMAIL"
        return textField
    }()
    
    let theBest_label: UILabel = {
        let theBest_label = UILabel()
        theBest_label.text = "TheBest"
        theBest_label.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 30)
        return theBest_label
    }()
    
    let wayToSave_label : UILabel = {
        let wayToSave_label = UILabel()
        wayToSave_label.frame.size.width = 60
        wayToSave_label.frame.size.height = 40
        wayToSave_label.text = "the way to save the animals"
        wayToSave_label.font = UIFont(name: "Helvetica-Bold", size: 25)
        return wayToSave_label
    }()
    

      let goodmoring_label : UILabel = {
      let goodmorning_label = UILabel()
      goodmorning_label.font = UIFont(name: "Marker Felt", size: 20.0)
      goodmorning_label.textColor = .black
          return goodmorning_label
           
  }()
    
    let animal_collection:UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 50, left: 50, bottom: 50, right: 50)
                layout.itemSize = CGSize(width: 60, height: 60)
        
        let animal_collection = UICollectionView( frame:CGRect(x: 50, y: 50, width: 30, height: 30) ,  collectionViewLayout: layout)
        
        
        return animal_collection
    }()
    
//    private var cardSliderFact:CardSliderSource?
    private var factViwModel: FactViewModel?
//    private var factCardSliderItems = [FactCardSliderModel]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.44, green: 0.64, blue: 0.60, alpha: 1.00)
        
        animal_collection.dataSource = self
        animal_collection.delegate = self
        initView()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        callViewModel()

    }
    
    func  callViewModel() {

        self.factViwModel = FactViewModel()
        self.factViwModel?.bindViewModelToController = {
            self.sampleData()
        }
    }

    func sampleData(){

        factViwModel?.factDataList.forEach({ fact in
//            var value = FactCardSliderModel(image: UIImage(named: "harryPotterNewsPaper"), rating: fact?.__v, title: fact?.type ?? "unkwnon" , subtitle: fact?.source, description: fact?.text)
//            factCardSliderItems.append(value)
//            print(factCardSliderItems.count)

        })
//
//        cardSliderFact = CardSliderSource(cardSliderModel: factCardSliderItems)
//        let cardSlider = CardSliderViewController.with(dataSource: cardSliderFact as! CardSliderDataSource)
//        DispatchQueue.main.async {
//            cardSlider.title = "animals"
//            cardSlider.modalPresentationStyle = .overFullScreen
//            self.present(cardSlider, animated: true, completion: nil)
//
//        }


        
    }


}

