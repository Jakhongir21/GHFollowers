//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Jakhongir on 02/08/23.
//

import UIKit


extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero )
    }
}
