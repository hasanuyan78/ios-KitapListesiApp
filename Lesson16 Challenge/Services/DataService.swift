//
//  DataService.swift
//  Lesson16 Challenge
//
//  Created by Hasan Uyan on 30.05.2023.
//

import Foundation

class DataService{
    static func getLocalData()->[Kitap]{
        let pathString=Bundle.main.path(forResource: "kitaplar", ofType: "json")
        guard pathString != nil else {
            return [Kitap]()
        }
        let url=URL(fileURLWithPath: pathString!)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let kitapData = try decoder.decode([Kitap].self, from: data)
            
            for k in kitapData{
                k.id=UUID()
            }
            return kitapData
            
        }
        catch{
            print(error)
        }
        
        return [Kitap]()
        
    }
}
