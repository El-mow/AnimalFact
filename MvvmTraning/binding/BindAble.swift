//
//  BindingClass.swift
//  MvvmTraning
//
//  Created by mobin on 5/3/22.
//

import Foundation


class BindAble <T>{
    
    var data : T{
        didSet{
            observer?(data)
        }
    }
    
    init(_ data:T?){
        self.data = data!
    }
    
    
    private var observer : ((T) -> ())?
    
    func binding (_ observer:@escaping (T) -> ()){
        
        observer(data)
        self.observer = observer

    }
    
}
