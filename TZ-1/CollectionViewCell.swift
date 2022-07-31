//
//  CollectionViewCell.swift
//  TZ-1
//
//  Created by Alex on 26.07.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageElement: UIImageView!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    override func layoutSubviews() {
        propElem()
    }
    
    func propElem() {
        //layer.borderWidth = 1
        //layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
    
}
