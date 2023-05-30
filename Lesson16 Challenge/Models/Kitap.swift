//
//  yazarModel.swift
//  Lesson16 Challenge
//
//  Created by Hasan Uyan on 30.05.2023.
//

import Foundation

class Kitap:Identifiable,Decodable{
    var id:UUID?
    var resim:String
    var kitapAdi:String
    var yazar:String
    var kisaAciklama:String
    var detay:String
}
