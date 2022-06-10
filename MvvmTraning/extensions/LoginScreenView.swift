//
//  LoginScreenView.swift
//  MvvmTraning
//
//  Created by mobin on 6/10/22.
//

import Foundation
import UIKit

extension HomeViewController {
    
    
    func initView(){

        view.addSubview(goodmoring_label)
         goodmoring_label.translatesAutoresizingMaskIntoConstraints = false
         goodmoring_label.frame.size.width = 100
         goodmoring_label.frame.size.height = 40
         goodmoring_label.text = "GoodMorning"
        
        goodmoring_label.topAnchor.constraint(equalTo:  view.topAnchor , constant: 30).isActive = true
        goodmoring_label.leftAnchor.constraint(equalTo:  view.leftAnchor , constant: 40).isActive = true
        goodmoring_label.widthAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive = true
        goodmoring_label.heightAnchor.constraint(equalToConstant: 40).isActive = true 
        

        
        
//        setupEmailTextField()

    }
    
    
    func setupEmailTextField() {
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.isUserInteractionEnabled = true
        emailTextField.backgroundColor = .white
       
        emailTextField.frame.size.width = 200
        emailTextField.frame.size.height = 20
       
        emailTextField.topAnchor.constraint(
            equalTo: view.topAnchor,
            constant: 40).isActive = true
        emailTextField.widthAnchor.constraint(
            equalToConstant: 300).isActive = true
        emailTextField.heightAnchor.constraint(
            equalToConstant: 40).isActive = true
    }
}
 
