//
//  Service.swift
//  NewsMVVM
//
//  Created by Marco Alonso Rodriguez on 09/12/22.
//

import Foundation

class Webservice {
    
    func getArticles(url: URL, completion: @escaping ([Noticia]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            
            if let data = data {
                do {
                    let articleList = try JSONDecoder().decode(NoticiaData.self, from: data)
                    print(articleList)
                    completion(articleList.articles)
                } catch {
                    print("Debug: error \(error.localizedDescription)")
                }
            }
            
        }.resume()
        
    }
    
}

