import SwiftUI

struct learnersListView: View {
    var learners: [Learner] = sampleLearners

    var body: some View {
        NavigationStack {
            List(learners) { learner in
                HStack(spacing: 12) {
                    Image(learner.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(learner.favouriteColor, lineWidth: 2))

                    VStack(alignment: .leading, spacing: 4) {
                        Text("\(learner.name) \(learner.surname)")
                            .font(.headline)
                        if !learner.description.isEmpty {
                            Text(learner.description)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Learners")
        }
    }
}

#Preview {
    learnersListView()
}