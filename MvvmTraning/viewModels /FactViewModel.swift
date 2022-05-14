//
//  FactViewModel.swift
//  MvvmTraning
//
//  Created by mobin on 3/17/22.
//

import Foundation
import CardSlider


class FactViewModel:NSObject {
    
    private var apiService : ApiServices?
    var factNumber :Int?
    private (set)var image:Data?{
        didSet{
           
            self.bindViewModelToController()

    }
    }
    
    private(set) var factDataList = [FactModel?]() {
        didSet{
            self.bindViewModelToController()
        }

    }
    private(set) var imageUrlList = [String?]() {
        didSet{
            self.bindViewModelToController()
        }

    }
    
    private (set) var  factCardSliderItems = [FactCardSliderModel](){
        
        didSet{
                self.bindViewModelToController()
            
        }
    }
    private (set) var  card_DataSource : FactSliderSource! {
        
        didSet{
                self.bindViewModelToController()
            
        }
    }
    
    
    
    var bindViewModelToController : (() -> ()) = {}

    
    
    override init(){
        super.init()
        self.apiService = ApiServices()
        goGetDataFromApi()
        getImageData()

        
    }
    

    
    func goGetDataFromApi(){
         self.apiService?.getAnimalsFacts(completion: { facts in
             
             facts.enumerated().forEach {
                 do{
                                 let imageData = try Data(contentsOf: URL(string: self.imageUrlList[$0]!)! )

                     let value = FactCardSliderModel(image: UIImage(data: imageData)
                                                     ,rating: $1.v,
                                                     title: $1.text ,
                                                     subtitle: "ffffff",
                                                     description: $1.text)

                     self.factCardSliderItems.append(value)

                 }catch {
                     print("Unable to load data: \(error)")

                 }

             }
             self.card_DataSource = FactSliderSource (cardSliderModel: self.factCardSliderItems)
          
         })
        
       
        
     }
    
    func getImageData(){

        self.apiService?.getImage(completion: { ImageModel in
        
            self.imageUrlList = ImageModel.message
            
        })
    }
    


    }
    
    



//self.factNumber = facts.count
//facts.enumerated().forEach {
//    do{
////                     let imageData = try Data(contentsOf: URL(string: self.imageUrlList[$0]!)! )
//
//        let value = FactCardSliderModel(image: UIImage(systemName: "square.and.arrow.up")
//                                        ,rating: $1.v,
//                                        title: $1.type ,
//                                        subtitle: "ffffff",
//                                        description: $1.text)
//
//        self.factCardSliderItems.append(value)
//
//    }catch {
//        print("Unable to load data: \(error)")
//
//    }
//
//}
