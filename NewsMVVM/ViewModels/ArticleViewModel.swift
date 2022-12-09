//
//  ArticleViewModel.swift
//  NewsMVVM
//
//  Created by Marco Alonso Rodriguez on 09/12/22.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Noticia]
    
    //functions to TableView
}

extension ArticleListViewModel {
    var numberOfSection: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    //is responsable of display just one article on the screen
    private let noticia: Noticia
}

extension ArticleViewModel {
    init(_ noticia: Noticia) {
        self.noticia = noticia
    }
    
    var title: String {
        return self.noticia.title ?? ""
    }
    
    var description: String {
        return self.noticia.description ?? ""
    }
}
