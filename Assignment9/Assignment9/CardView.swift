//
//  CardView.swift
//  Lab 2
//  Group #7
//  Created by Pedro Orellana
//  10/12/26
//

import SwiftUI

struct CardView: View {
    
    @State var isFaceDown: Bool = false
    
    let language: String
    
    var body: some View {
        ZStack {
            
            let shape =  RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue)
                .frame(width: 120, height: 150)
                .opacity(1)
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 3)
                .frame(width: 120, height: 150)
                
            
           
            VStack {
                Image(language)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                language == "PHP" ?
                Text(language)
                    .font(.headline)
                :
                Text(language.capitalized)
                    .font(.headline)
                    
                
//                Text(language.capitalized)
//                    .font(.headline)
                
            }
      
            isFaceDown ? shape.opacity(1) : shape.opacity(0)
          
        }
        .onTapGesture {
            isFaceDown = !isFaceDown
        }
        
  
    }
}

#Preview {
    CardView(language: "kotlin")
}
