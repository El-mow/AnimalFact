//
//  ViewController.swift
//  MvvmTraning
//
//  Created by mobin on 3/17/22.
//

import UIKit
import CardSlider



class HomeViewController: UIViewController {
    
     let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "EMAIL"
        return textField
    }()
    
    
      let goodmoring_label : UILabel = {
      let goodmorning_label = UILabel()
      goodmorning_label.font = UIFont(name: "Marker Felt", size: 20.0)
      goodmorning_label.textColor = .black
          return goodmorning_label
           
  }()

//    private var cardSliderFact:CardSliderSource?
    private var factViwModel: FactViewModel?
//    private var factCardSliderItems = [FactCardSliderModel]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.44, green: 0.64, blue: 0.60, alpha: 1.00)
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

