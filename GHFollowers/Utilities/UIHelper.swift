//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Jakhongir on 10/07/23.
//

import UIKit

enum UIHelper {
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpaceing: CGFloat = 10
        let availabeWidth = width - (padding * 2) - (minimumItemSpaceing * 2)
        let itemWidth = availabeWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
}
