//
//  ContentView.swift
//  Lab 2
//  Group #7
//  Created by Pedro Orellana
//  10/12/26
//

import SwiftUI

struct ContentView: View {
    
    let counter = 0
    
    //create list of all programming languages
    let languages : [String] = [ "javascript", "c++", "python", "swift", "c", "c", "kotlin", "swift", "c++", "javascript", "kotlin", "python"]
    
    
    
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        
    var body: some View {
        
        Text("Programming languages")
            .font(.title)
        
        LazyVGrid(columns: columns) {
            ForEach(languages.indices, id: \.self) { index in
                
                CardView(language: languages[index])
                
            }
        }
        .padding()
        
    }
    
}

#Preview {
    ContentView()
}
