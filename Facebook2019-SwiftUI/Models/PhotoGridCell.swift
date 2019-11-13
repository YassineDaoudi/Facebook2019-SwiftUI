//
//  PhotoGridCell.swift
//  Facebook2019-SwiftUI
//
//  Created by Yassine Daoudi on 11/4/19.
//  Copyright © 2019 Yassine Daoudi. All rights reserved.
//

import UIKit
import LBTATools

class PhotoGridCell: LBTAListCell<String> {
    
    override var item: String! {
        didSet {
            imageview.image = UIImage(named: item)
        }
    }
    
    
    let imageview = UIImageView(image: UIImage(named: "TK"), contentMode: .scaleAspectFill)
    
    override func setupViews() {
        addSubview(imageview)
        imageview.fillSuperview()
    }
}
