class Pokemon {
    var num = 0
    var name = ""
    var type = [""]
    var ability = [""]

    init(_ num: Int, _ name: String, _ type: [String], _ ability: [String]) {
        self.num = num
        self.name = name
        self.type = type
        self.ability = ability
    }

    func displayInfo() {
        print("No.       #\(num)")
        print("Name      \(name)")
        print("Type      \(type)")
        print("Abilities \(ability)")
        print("===================================")
    }
}

class GigantamaxPokemon: Pokemon {
    var location = ""

    init(_ num: Int, _ name: String, _ type: [String], _ ability: [String], _ location: String) {
        self.location = location
    
        super.init(num, name, type, ability)
    }

    override func displayInfo() {
        print("No.       #\(num)")
        print("Name      \(name)")
        print("Type      \(type)")
        print("Abilities \(ability)")
        print("Location  \(location)")
        print("===================================")
    }
}

var bulbasaur = Pokemon(1, "Bulbasaur", ["Grass 🌱", "Poison 💀"], ["Overgrow"])
var charmander = Pokemon(4, "Charmander", ["Fire 🔥"], ["Blaze"])
var squirtle = Pokemon(7, "Squirtle", ["Water 💧"], ["Torrent"])
var charizard = GigantamaxPokemon(6, "Charizard", ["Fire 🔥"], ["Blaze"], "Lake of Outrage")

bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
charizard.displayInfo()