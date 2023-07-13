//
//  ContentView.swift
//  aboutMe
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var presentAlert = false
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .ignoresSafeArea()
            VStack {
                Text("✨ Akshaya 🌙")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding()
                Image("book")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300.0)
                    .cornerRadius(15)
                    .padding()
                
                Button("Learn more about me") {
                    presentAlert = true
                    
                }
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .padding()
                
            }
        }
        
        
        .alert("My name is Akshaya. I am 14 years old. I love reading, listening to music, and sculpting with clay. I also love elephants 🐘✨!", isPresented: $presentAlert, actions: {})
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
