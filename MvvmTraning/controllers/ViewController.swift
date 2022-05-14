//
//  ViewController.swift
//  MvvmTraning
//
//  Created by mobin on 3/17/22.
//

import UIKit
import CardSlider

class ViewController: UIViewController {
    
    private var factViwModel: FactViewModel?
    
    var sampleArray:Array<String> = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       initView()
        
        
       
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        callViewModel()

    }
    
    func  callViewModel() {
        self.factViwModel = FactViewModel()
        self.factViwModel?.bindViewModelToController = {
           self.sampleData()
//            self.getImageData()
        }
    }

    func initView(){
        let label = UILabel(frame: CGRect(x: 0,y: 0, width: 530, height: 100))
        label.center = CGPoint(x: (UIScreen.main.bounds.width)/2, y:120)
        label.textAlignment = .center
        label.text = "Animal Facts "
        label.font = UIFont(name: "Marker Felt", size: 20)
        label.textColor = .black
        self.view.addSubview(label)
        self.view.backgroundColor = .systemPink
    }
    
    func sampleData(){
        
        if factViwModel?.factCardSliderItems.count == 9 {
            guard let cardSliderFact = factViwModel?.card_DataSource as? CardSliderDataSource else { return }
            let cardSlider = CardSliderViewController.with(dataSource: cardSliderFact)
            DispatchQueue.main.async {
                            cardSlider.title = "animals"
                            cardSlider.modalPresentationStyle = .overFullScreen
                            self.present(cardSlider, animated: true, completion: nil)
                        }
        }


        
    }
    

    
    


}

