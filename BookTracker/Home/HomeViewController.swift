//
//  HomeViewController.swift
//  BookTracker
//
//  Created by Lucca Beurmann on 26/11/22.
//

import Foundation
import UIKit

final class HomeViewController: UIViewController {
    
    private lazy var content = HomeView()
    
    override func viewDidLoad() {
        self.view = content
    }
    
}
