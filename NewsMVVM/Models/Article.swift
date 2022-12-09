//
//  Article.swift
//  NewsMVVM
//
//  Created by Marco Alonso Rodriguez on 09/12/22.
//

import Foundation

struct NoticiaData: Codable {
    let articles: [Noticia]
}

struct Noticia : Codable {
    let source: Source
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}

struct Source: Codable {
    let name: String?
}
