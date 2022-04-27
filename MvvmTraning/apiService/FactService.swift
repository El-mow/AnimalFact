//
//  FactService.swift
//  MvvmTraning
//
//  Created by mobin on 4/5/22.
//

import Foundation

protocol FactServiceProtocol {
    func getEmployees(completion: @escaping (_ success: Bool, _ results: FactModel?, _ error: String?) -> ())
}

class FactService:FactServiceProtocol {
    func getEmployees(completion: @escaping (Bool, FactModel?, String?) -> ()) {
        
        ApiServices.getAnimalsFacts(<#T##self: ApiServices##ApiServices#>)
    }
    
    
}
