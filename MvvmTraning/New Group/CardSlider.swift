//
//  CardSlider.swift
//  MvvmTraning
//
//  Created by mobin on 4/15/22.
//

import Foundation
import CardSlider

class CardSliderSource: CardSliderDataSource {
    private var cardSliderModels:[FactCardSliderModel]
    
    
    init(cardSliderModel:[FactCardSliderModel]){
        self.cardSliderModels = cardSliderModel
    }

    func item(for index: Int) -> CardSliderItem {
        cardSliderModels[index]
    }
    
    func numberOfItems() -> Int {
        cardSliderModels.count
    }
    
    
}
