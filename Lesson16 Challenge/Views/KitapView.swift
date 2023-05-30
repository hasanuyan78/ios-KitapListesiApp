//
//  KitapView.swift
//  Lesson16 Challenge
//
//  Created by Hasan Uyan on 30.05.2023.
//

import SwiftUI

struct KitapView: View {
    var kitap:Kitap
    var body: some View {
        
        HStack{
            Image(kitap.resim)
                .resizable()
                .scaledToFit()
                .frame(width:75,height:100)
                .clipped()
            VStack(alignment: .leading, content: {
                Text(kitap.kitapAdi)
                    .font(.title)
                Text(kitap.yazar)
                    .font(.headline)
                Text(kitap.kisaAciklama)
                    
            })
            
        }
    }
}

struct KitapView_Previews: PreviewProvider {
    static var previews: some View {
       let k=KitapModel()
        KitapView(kitap: k.kitaplar[0])
    }
}
