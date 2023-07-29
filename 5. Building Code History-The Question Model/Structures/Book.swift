// Write your code below: 📚
struct Book {
  var title: String //= ""
  var pages: Int //= 0

  init(title: String, pages: Int) {
    self.title = title
    self.pages = pages
  }
}

// var myFavBook = Book()
var theHobbit = Book(title: "The Hobbit", pages: 300)

/* print(myFavBook.pages)
myFavBook.pages = 640
print(myFavBook.pages)
myFavBook.title = "Amulet: The Stonekeeper"
print(myFavBook.title) */