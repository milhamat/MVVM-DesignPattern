//
//  Services.swift
//  MVVM-DesignPattern
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 21/12/20.
//

import Foundation

class Services: NSObject {
    static let shared = Services()
    
    func fetchData(completion: @escaping ([MainModel]?, Error?) ->()){
        let urlString = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(nil, error)
                print("Failed to fetch data", error)
                return
            }
            guard let data = data else {return}
            do {
                let model = try JSONDecoder().decode([MainModel].self, from: data)
                DispatchQueue.main.async {
                    completion(model, nil)
                }
            } catch let err {
                print("failed to decode", err)
            }
        }.resume()
    }
}
