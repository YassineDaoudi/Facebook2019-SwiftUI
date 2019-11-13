//
//  StoryHeader.swift
//  Facebook2019-SwiftUI
//
//  Created by Yassine Daoudi on 11/13/19.
//  Copyright © 2019 Yassine Daoudi. All rights reserved.
//

import UIKit
import LBTATools


class StoryHeader: UICollectionReusableView {
    
    let storiesController = StoriesController(scrollDirection: .horizontal)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemRed
        
        stack(storiesController.view)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

class StoryPhotoCell: LBTAListCell<String> {
    
    override var item: String! {
        didSet {
            imageView.image = UIImage(named: item)
            nameLabel.text = item.description
        }
    }
    
    let imageView = UIImageView(image: nil, contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "name", font: .boldSystemFont(ofSize: 14), textColor: .white)
    let gradientLayer = CAGradientLayer()
    
    override func setupViews() {
       
        imageView.layer.cornerRadius = 10
        
        stack(imageView)
        
        setupGradientLayer()
        
        stack(UIView(),nameLabel).withMargins(.allSides(8))
    }
    
    fileprivate func setupGradientLayer() {
        
        
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.7, 1.1]
        clipsToBounds = true
        layer.cornerRadius = 10
        
        layer.addSublayer(gradientLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer.frame = bounds
    }
    
}

class StoriesController: LBTAListController<StoryPhotoCell, String>, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.items = ["Tanjiro Kamado", "Zenitsu Agatsuma", "Giyu Tomioka", "Nezuko Kamado", "Muzan Kibutsuji"]
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 100, height: view.frame.height - 24)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 12, bottom: 0, right: 12)
    }
}
