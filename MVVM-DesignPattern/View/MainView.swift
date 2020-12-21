//
//  MainView.swift
//  MVVM-DesignPattern
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 21/12/20.
//

import UIKit

class MainView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .white
    }
}
