//
//  ApiService.swift
//  MvvmTraning
//
//  Created by mobin on 3/17/22.
//

import Foundation



class ApiServices : NSObject {
        
    var base_url = "https://cat-fact.herokuapp.com/facts/random?animal_type=cat&amount=10"
    
    
    func getAnimalsFacts(completion: @escaping ([FactModel]) -> ()){
        if let url = URL(string: base_url){
            URLSession.shared.dataTask(with: url) {(data, urlResponse, error) in
                if let data = data {

                    let jsonCoder = JSONDecoder()
                                           
                    let empData = try! jsonCoder.decode([FactModel].self, from: data)
                    completion(empData)
                }
            }.resume()
            
        }
            
        }
    
    func getImage(completion: @escaping (Data) -> ()){
     
        let url = URL(string: "https://images.dog.ceo/breeds/akita/512px-Ainu-Dog.jpg")!

           // Create Data Task
           let dataTask = URLSession.shared.dataTask(with: url) { [weak self] (data, _, _) in
               if let get_data = data {
                   print(get_data)
               }
           }.resume()
    }
    

}
      
    

