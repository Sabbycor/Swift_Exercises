//
//  containerView.swift
//  learners
//
//  Created by Foundation 16 on 03/03/26.
//

import SwiftUI

struct containerView: View {
    var body: some View {
        TabView {
            
            // qui ci dobbiamo aggiungere i Tabs - questa è l'animazione che voglio per l'app
            Tab("Learners", systemImage: "person.fill") {
                //metti qui la view
                learnersListView()}
            Tab("Teams", systemImage: "person.3.fill") {
                teamListView()
            }
            
        }
        
    }
}

#Preview {
    containerView()
}
