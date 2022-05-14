//
//  ApiService.swift
//  MvvmTraning
//
//  Created by mobin on 3/17/22.
//

import Foundation



class ApiServices : NSObject {
        
    var base_url = "https://cat-fact.herokuapp.com/facts/random?animal_type=cat&amount=9"
    
    func getAnimalsFacts(completion: @escaping ([FactModel]) -> ()){
        if let url = URL(string: API.base_url){
            URLSession.shared.dataTask(with: url) {[weak self](data, urlResponse, error) in
                if let data = data {
                    let jsonCoder = JSONDecoder()
                    let empData = try! jsonCoder.decode([FactModel].self, from: data)
                    completion(empData)
                }
            }.resume()
            
        }
            
        }
    
    func getImage(completion: @escaping (ImageModel) -> ()){
     
        let url : URL? = URL(string: "https://dog.ceo/api/breed/akita/images")

           // Create Data Task
           let dataTask = URLSession.shared.dataTask(with: url!) { [weak self] (data, _, _) in
            
               if let data = data {
                  
                   let jsonCoder = JSONDecoder()
                   let  imageData = try! jsonCoder.decode(ImageModel.self, from: data)
                   completion(imageData)
                   
               }
               
           }.resume()
    }
    

}
      
    

