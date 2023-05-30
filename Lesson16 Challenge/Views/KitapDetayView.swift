//
//  KitapDetayView.swift
//  Lesson16 Challenge
//
//  Created by Hasan Uyan on 30.05.2023.
//

import SwiftUI

struct KitapDetayView: View {
    var kitap:Kitap
    var body: some View {
        ScrollView{
            VStack{
                Text(kitap.detay)
            }
            .padding(.horizontal)
           
        } .navigationTitle(kitap.kitapAdi)
    }
}

struct KitapDetayView_Previews: PreviewProvider {
    static var previews: some View {
        let k=KitapModel()
        KitapDetayView(kitap:k.kitaplar[0])
    }
}
