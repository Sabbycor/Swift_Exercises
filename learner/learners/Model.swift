//
//  Model.swift
//  learners
//
//  Created by Foundation 16 on 02/03/26.
// è una data structure solo qui

// import Foundation // questo è basic swift

import SwiftUI

struct Learner : Identifiable {
    var id: UUID = UUID()
    var name: String
    var surname: String
    var favouriteColor: Color
    var image: String = "noimage"
    var description: String = ""
    
}


struct Team : Identifiable {
    var id: UUID = UUID()
    var name: String
    var imageName: String //usiamo direttamente il nome dell'immagine direttamente. Abbiamo le immagini in Assets
    var learners: [Learner] //array di studenti
    
    
    
}

