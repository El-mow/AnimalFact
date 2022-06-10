//
//  LaunchViewController.swift
//  MvvmTraning
//
//  Created by mobin on 6/2/22.
//

import UIKit
import SDWebImage
class LaunchViewController: UIViewController {
    let label : UILabel! = {
        let label = UILabel(frame: CGRect(x: 0,y: 0, width: 530, height: 100))
        label.center = CGPoint(x: (UIScreen.main.bounds.width)/2, y:120)
        label.textAlignment = .center
        label.font = UIFont(name: "Marker Felt", size: 28)
        label.textColor = .black

        return label
    }()

    let imageView : SDAnimatedImageView = {
        let imageView = SDAnimatedImageView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        imageView.image = SDAnimatedImage(named: "Dog.gif")
        return imageView
    }()
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(label)
        

        imageView.center = view.center
        self.view.addSubview(imageView)
        

    }
    override func viewDidAppear(_ animated: Bool) {
        _ = true
        typingAnimation()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            let ViewController = HomeViewController()
            ViewController.modalTransitionStyle = .coverVertical
            self.present(ViewController, animated: true)
        }
        
    }
    
    func typingAnimation(){
       let text = "Animal Facts"
        label.text = ""

           for i in text{

               label.text! += "\(i)"
                RunLoop.current.run(until: Date() + 0.3)


            }
        }

    
        
    }


