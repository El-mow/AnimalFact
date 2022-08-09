//
//  ViewController.swift
//  MvvmTraning
//
//  Created by mobin on 3/17/22.
//

import UIKit
import CardSlider




final class HomeViewController: UIViewController {
    let spacing:CGFloat = 4.0

    
    let layout_animal: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    
    
     lazy var imageProfile: UIImageView = {
      let imageProfile = UIImageView()
        imageProfile.frame.size.width = UIScreen.main.bounds.width * 0.4
        imageProfile.frame.size.height = UIScreen.main.bounds.height * 0.4
       return imageProfile
        
    }()
     lazy var  emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "EMAIL"
        return textField
    }()
    
     lazy var  theBest_label: UILabel = {
        let theBest_label = UILabel()
        theBest_label.text = "TheBest"
        theBest_label.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 30)
        return theBest_label
    }()
    
     lazy var wayToSave_label : UILabel = {
        let wayToSave_label = UILabel()
        wayToSave_label.frame.size.width = 60
        wayToSave_label.frame.size.height = 40
        wayToSave_label.text = "the way to save the animals"
        wayToSave_label.font = UIFont(name: "Helvetica-Bold", size: 25)
        return wayToSave_label
    }()
    

       lazy var goodmoring_label : UILabel = {
      let goodmorning_label = UILabel()
      goodmorning_label.font = UIFont(name: "Marker Felt", size: 20.0)
      goodmorning_label.textColor = .black
          return goodmorning_label
           
  }()
    
    
     
    lazy var animal_collection: UICollectionView = {

               let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        layout.scrollDirection = .vertical
                   
       let animal_collection = UICollectionView( frame: CGRect.zero, collectionViewLayout: layout)

       return animal_collection
   }()
    
//    private var cardSliderFact:CardSliderSource?
    private var factViwModel: FactViewModel?
    var  homeViewModel: HomeViewModel?

//    private var factCardSliderItems = [FactCardSliderModel]()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(StaticData.animalsCard.count)

        initView()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        callViewModel()

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

