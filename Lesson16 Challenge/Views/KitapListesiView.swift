//
//  ContentView.swift
//  Lesson16 Challenge
//
//  Created by Hasan Uyan on 30.05.2023.
//

import SwiftUI

struct KitapListesiView: View {
   @ObservedObject var kitapModel=KitapModel()
    var body: some View {
      
        NavigationView{
            List(kitapModel.kitaplar)
            {
                k in
                NavigationLink {
                    KitapDetayView(kitap: k)
                } label: {
                    KitapView(kitap: k)
                }

              
                
                
            }
            .navigationTitle("Kitap Listesi")
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

        KitapListesiView()
    }
}
