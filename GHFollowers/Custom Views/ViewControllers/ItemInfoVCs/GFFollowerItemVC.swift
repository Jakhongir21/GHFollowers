//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Jakhongir on 26/07/23.
//

import UIKit

protocol GFFollowerInfoVCDelegate: class {
    func didTapGetFollowers(for user: User)
}


class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: GFFollowerInfoVCDelegate!
    
    
    
     init(user: User,  delegate: GFFollowerInfoVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
    
}

