//
//  PhotosGridController.swift
//  Facebook2019-SwiftUI
//
//  Created by Yassine Daoudi on 11/4/19.
//  Copyright © 2019 Yassine Daoudi. All rights reserved.
//

import UIKit
import SwiftUI
import LBTATools



class PhotosGridController: LBTAListController<PhotoGridCell,String>, UICollectionViewDelegateFlowLayout {
     
    let cellSpacing: CGFloat = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.items = ["Tanjiro Kamado", "Zenitsu Agatsuma", "Giyu Tomioka", "Nezuko Kamado", "Muzan Kibutsuji"]
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 || indexPath.item == 1 {
            let width = (view.frame.width - 3 * cellSpacing) / 2
            return CGSize(width: width, height: width)
        }
        
        let width = (view.frame.width - 4.1 * cellSpacing) / 3
        
        return CGSize(width: width, height: width)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return cellSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: cellSpacing, bottom: 0, right: cellSpacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cellSpacing
    }
    
}

struct PhotosGridPreview: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<PhotosGridPreview.ContainerView>) -> UIViewController {
            return PhotosGridController()
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<PhotosGridPreview.ContainerView>) {
            
        }
    }
}
