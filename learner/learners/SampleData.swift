import SwiftUI

// Simple in-memory sample data for previews and initial UI.
let sampleLearners: [Learner] = [
    Learner(name: "Filippo", surname: "Rossi", favouriteColor: .blue, image: "filippo", description: "iOS dev"),
    Learner(name: "Carmine", surname: "Bianchi", favouriteColor: .red, image: "carmine", description: "Designer"),
    Learner(name: "Mina", surname: "Verdi", favouriteColor: .purple, image: "mina", description: "PM"),
    Learner(name: "Blue", surname: "Team", favouriteColor: .cyan, image: "blue", description: "QA")
]

let sampleTeams: [Team] = [
    Team(name: "Core", imageName: "blue", learners: [sampleLearners[0], sampleLearners[1]]),
    Team(name: "Experience", imageName: "carmine", learners: [sampleLearners[2]]),
    Team(name: "Quality", imageName: "filippo", learners: [sampleLearners[3]])
]