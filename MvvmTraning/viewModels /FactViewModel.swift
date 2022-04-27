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
    
    var bindViewModelToController : (() -> ()) = {}

    
    
    override init(){
        super.init()
        self.apiService = ApiServices()
        goGetDataFromApi()
//        getImageData()
        
    }
    
    func goGetDataFromApi(){
        self.apiService?.getAnimalsFacts(completion: { FactModel in
            self.factDataList.append(contentsOf: FactModel)
            
        })
        
    }
    func getImageData(){
        
        self.apiService?.getImage(completion: { Data in
            self.image = Data
            print(Data.isEmpty)

        })
    }
    
}




//extension FactViewModel: CardSliderDataSource {
//    func item(for index: Int) -> CardSliderItem {
//        <#code#>
//    }
//
//    func numberOfItems() -> Int {
//        <#code#>
//    }
//}

