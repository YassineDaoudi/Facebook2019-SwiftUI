//
//  PostCell.swift
//  Facebook2019-SwiftUI
//
//  Created by Yassine Daoudi on 11/4/19.
//  Copyright © 2019 Yassine Daoudi. All rights reserved.
//

import UIKit
import LBTATools


class PostCell: LBTAListCell<String> {
    
    let imageView = UIImageView(image: UIImage(named: "DS"), contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "Demon Slayer")
    let dateLabel = UILabel(text: "Friday at 11:11AM")
    let postTextLabel = UILabel(text: "Alright now that our mock is finally done and the UI Elements are in place, we can start to input data into cells.")
    let photosGridController = PhotosGridController()
    
    override func setupViews() {
        backgroundColor = .white
        imageView.layer.cornerRadius = 20
        stack(
            hstack(
                imageView
                    .withHeight(40)
                    .withWidth(40)
                    
                ,
                stack(nameLabel, dateLabel),
                spacing: 8
            )
                .padLeft(12)
                .padRight(12)
                .padTop(12),
            postTextLabel
            ,
            photosGridController.view,
            spacing: 8
        )
        
    }
}
