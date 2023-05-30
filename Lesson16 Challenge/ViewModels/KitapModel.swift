//
//  yazarModel.swift
//  Lesson16 Challenge
//
//  Created by Hasan Uyan on 30.05.2023.
//

import Foundation

class KitapModel:ObservableObject{
  @Published  var kitaplar:[Kitap]
    
    init()
    {
        kitaplar=DataService.getLocalData()
    }
}
