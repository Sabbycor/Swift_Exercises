//
//  ContentView.swift
//  cardFive
//
//  Created by Foundation 16 on 02/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image(systemName: "suit.spade.fill")
                .imageScale(.large)
                .foregroundStyle(.red).font(.system(size: 60, weight: .bold)).offset(x:1, y:-10)
            
            
                Image(systemName: "suit.spade.fill")
                    .imageScale(.large)
                    .foregroundStyle(.black).font(.system(size: 60, weight: .bold)).offset(x: 130.0, y: -270.0)
            
            Image(systemName: "suit.spade.fill")
                .imageScale(.large)
                .foregroundStyle(.black).font(.system(size: 60, weight: .bold)).offset(x: 130.0, y: -230.0).rotationEffect(.degrees(180))
            
            Image(systemName: "suit.spade.fill")
                .imageScale(.large)
                .foregroundStyle(.black).font(.system(size: 60, weight: .bold)).offset(x: -130.0, y: -270.0) // questo è quello corretto
            
            Image(systemName: "suit.spade.fill")
                .imageScale(.large)
                .foregroundStyle(.black).font(.system(size: 60, weight: .bold)).offset(x: -130.0, y: -230.0).rotationEffect(.degrees(180))
            
            
            
            Text("5").foregroundStyle(.black).font(.system(size: 60, weight: .bold)).offset(x: -150, y:-350)
            
            Text("5").foregroundStyle(.black).font(.system(size: 60, weight: .bold)).rotationEffect(.degrees(180)).offset(x:150, y:320)
            

        }
            
        .padding()
    }
}

#Preview {
    ContentView()
}
