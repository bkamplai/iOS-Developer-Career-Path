struct Band {
    var genre: String
    var members: Int
    var isActive: Bool

    init(genre: String, members: Int, isActive: Bool) {
        self.genre = genre
        self.members = members
        self.isActive = isActive
    }

    func pumpUpCrowd() -> String {
        if self.isActive == true {
            return "Are you ready to ROCK?"
        } else {
            return "..."
        }
    }

    mutating func changeGenre(newGenre: String) -> String {
        self.genre = newGenre
        return self.genre
    }
}

var maroon5 = Band(genre: "pop", members: 5, isActive: true)
var fooFighters = Band(genre: "rock", members: 6, isActive: true)
var journey = Band(genre: "jazz", members: 5, isActive: true)
var bandsNewGenre = journey.changeGenre(newGenre: "rock")
var bts: Band = Band(genre: "kpop", members: 7, isActive: true)

print(fooFighters.pumpUpCrowd())
print(bandsNewGenre)
print(type(of: journey))