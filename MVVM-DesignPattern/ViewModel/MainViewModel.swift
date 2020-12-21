//
//  MainViewModel.swift
//  MVVM-DesignPattern
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 21/12/20.
//

import Foundation

class MainViewModel {
    let detailName: String
    
    init(mainModel: MainModel){
        
        detailName = mainModel.name
    }
}
