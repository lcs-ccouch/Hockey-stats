import SwiftUI

struct Player: Identifiable {
    let id = UUID()
    let playerName: String
    let goals: Int
    let assists: Int
    let gamesPlayed: Int
}

struct FavouritePlayers: View {
    @State private var players = [
        Player(playerName: "Victor Hedman", goals: 31, assists: 14, gamesPlayed: 28),
        Player(playerName: "Connor McDavid", goals: 26, assists: 8, gamesPlayed: 30),
        Player(playerName: "Alex Ovechkin", goals: 18, assists: 9, gamesPlayed: 22),
        Player(playerName: "Sidney Crosby", goals: 23, assists: 10, gamesPlayed: 25),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(players) { player in
                    VStack(alignment: .leading) {
                        Text(player.playerName)
                            .font(.headline)
                        HStack {
                            Text("Goals: \(player.goals)")
                            Text("Assists: \(player.assists)")
                            Text("Games Played: \(player.gamesPlayed)")
                        }
                    }
                }
                .onDelete(perform: deletePlayer)
            }
            .navigationTitle("Favourite Players")
        }
    }
    
    private func deletePlayer(at offsets: IndexSet) {
        players.remove(atOffsets: offsets)
    }
}

struct FavouritePlayers_Previews: PreviewProvider {
    static var previews: some View {
        FavouritePlayers()
    }
}

