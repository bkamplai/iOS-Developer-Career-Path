//
//  main.swift
//  School Database
//
//  Created by Brandon Kamplain on 6/16/23.
//

struct Student {
    var name: String
    var favoriteTeacherID: Int
}

struct Teacher {
    var name: String
    var id: Int
    var email, hairColor: String?
}

struct School {
    var name: String
    var teachers: [Teacher]
    
    func getTeacher(withID id: Int) -> Teacher? {
        for teacher in teachers {
            if teacher.id == id {
                return teacher
            }
        }
        return nil
    }
    
    func printFavoriteTeacherInfo(for student: Student) {
        guard let favoriteTeacher = getTeacher(withID: student.favoriteTeacherID) else {
            print("No teacher with the ID \(student.favoriteTeacherID) works at \(name)!")
            return
        }
        print("\(student.name)'s favorite teacher is \(favoriteTeacher.name)!")
        print("They have \(favoriteTeacher.hairColor ?? "no") hair.")
        
        guard let email = favoriteTeacher.email else {
            print("They don't have an email address on file.")
            return
        }
        print("Their email address is \(email).")
    }
}

let teachers = [
    Teacher(name: "Mrs. Metz", id: 372, email: "bmetz@d51schools.org", hairColor: "rainbow"),
    Teacher(name: "Mr. Harvey", id: 748, email: "charvey@d51schools.org", hairColor: nil),
    Teacher(name: "Mrs. LaCount", id: 693, email: nil, hairColor: "blonde")
]
let fruitaMonument = School(name: "Fruita Monument High School", teachers: teachers)

let brandon = Student(name: "Brandon Kamplain", favoriteTeacherID: 372)
let emma = Student(name: "Emma Shepardson", favoriteTeacherID: 421)

fruitaMonument.printFavoriteTeacherInfo(for: brandon)
fruitaMonument.printFavoriteTeacherInfo(for: emma)
