//
//  ContentView.swift
//  gif
//
//  Created by Jorge De la Rosa Paredes on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("GIF APP").foregroundColor(.black).font(.custom("Helvetica Neue Bold", size: 20))
            AsyncImage(url: URL(string: "https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 300)
            GIFView(type: URL(string: "https://media.giphy.com/media/Dh5q0sShxgp13DwrvG/giphy.gif")!)
        }
        .padding()
        .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

