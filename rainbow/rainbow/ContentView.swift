//
//  ContentView.swift
//  rainbow
//
//  Created by Foundation 16 on 27/02/26.
//

import SwiftUI

struct ContentView: View {
@State var msg: String = "Hello,Devs!" //con questo puoi modificare la var
    
    var isMyCarThere: Bool = true
    
    let sentence: String = "Ciao Belli"
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.7).ignoresSafeArea()
            VStack {
                Image(systemName: "rainbow")
                    .font(.system(size: 250))
                    .symbolRenderingMode(.multicolor)
                    .symbolEffect(.variableColor.reversing)
                Text(msg)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Button("Abracadabra") {
                    msg = "You rock!"
                }
                    
            }
        }
    
    }
}

#Preview {
    ContentView()
}
