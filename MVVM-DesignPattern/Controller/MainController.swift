//
//  ViewController.swift
//  MVVM-DesignPattern
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 21/12/20.
//

import UIKit

class MainController: UIViewController {

    private var mainView: MainView!
    private var mainViewModel = [MainViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainView = MainView.init(frame: self.view.frame)
        self.view = self.mainView
        
        self.navigationController?.navigationBar.isHidden = true
        fetchData()
    }
    
    private func fetchData(){
        self.mainViewModel = []
        
        Services.shared.fetchData { (model, error) in
            if let error = error {
                print("Failed to fetch data", error)
                return
            }
            if let model = model {
                self.mainViewModel = model.map({.init(mainModel: $0)})
//                self.mainView.detailLabel.text =
            }
        }
    }

}

