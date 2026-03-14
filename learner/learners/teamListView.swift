import SwiftUI

struct teamListView: View {
    var teams: [Team] = sampleTeams

    var body: some View {
        NavigationStack {
            List(teams) { team in
                NavigationLink {
                    TeamDetailView(team: team)
                } label: {
                    HStack(spacing: 12) {
                        Image(team.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 44, height: 44)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                        VStack(alignment: .leading, spacing: 4) {
                            Text(team.name)
                                .font(.headline)
                            Text("\(team.learners.count) learners")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Teams")
        }
    }
}

private struct TeamDetailView: View {
    let team: Team

    var body: some View {
        List(team.learners) { learner in
            HStack(spacing: 12) {
                Image(learner.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
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
            .padding(.vertical, 2)
        }
        .navigationTitle(team.name)
    }
}

#Preview {
    teamListView()
}