//
//  NewsListTableViewController.swift
//  NewsMVVM
//
//  Created by Marco Alonso Rodriguez on 09/12/22.
//

import UIKit

class NewsListTableViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=mx&apiKey=0cf790498275413a9247f8b94b3843fd")!
        
        Webservice().getArticles(url: url) { listArticles in
            print(listArticles)
        }
        
    }
}
