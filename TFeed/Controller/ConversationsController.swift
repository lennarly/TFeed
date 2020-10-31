//
//  ConversationsController.swift
//  TFeed
//
//  Created by Lenar Valeev on 26.10.2020.
//

import UIKit

class ConversationsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
         
        view.backgroundColor = .white
        navigationItem.title = "Messages"
        
    }
    
}
