//
//  CustomCell.swift
//  MvvmTraning
//
//  Created by mobin on 7/9/22.
//

import UIKit
import SDWebImage

class CustomCell: UICollectionViewCell {
    static let cellId = "cell"
    var data : AnimalModelCard?{
        didSet{
            guard let data = data else {
                return
            }
//            animal_img.image = data.image
            name_txt.text = data.title
            animal_img.image = data.image
        }
    }
    
     lazy var cell_stack: UIStackView = {
         let item_stack = UIStackView()
         item_stack.axis = .vertical
         item_stack.alignment = .center
         item_stack.distribution = .fillProportionally
         item_stack.layer.cornerRadius = 25.0
         return item_stack
    }()
 

   lazy  var  animal_img: UIImageView = {
        let animal_img = UIImageView()
        animal_img.translatesAutoresizingMaskIntoConstraints = true
        animal_img.contentMode = .center
//       animal_img.backgroundColor = .blue
        animal_img.clipsToBounds = true
        return animal_img
    }()

  lazy  var name_txt: UILabel = {
        let name_label = UILabel()
      name_label.textColor = .black
      name_label.numberOfLines = 3
      name_label.font = UIFont(name: "Marker Felt", size: 20.0)
        return name_label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        

        contentView.addSubview(cell_stack)



        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:\(aDecoder) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        
    
        cell_stack.frame = CGRect(x: contentView.center.x - 90  , y: contentView.center.y - 80 , width: contentView.bounds.width, height: contentView.bounds.height)
        cell_stack.backgroundColor = .white
        cell_stack.addArrangedSubview(animal_img)
        cell_stack.addArrangedSubview(name_txt)
        
    
        
    }
    
    
}
