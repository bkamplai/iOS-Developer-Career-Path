//
//  main.swift
//  Guard Statements
//
//  Created by Brandon Kamplain on 6/15/23.
//

func runProgram() {
    let language = "Swift"
    let firstRelease: Int? = 2014
    let website: String? = "swift.org"
    let designer: String? = "Chris Lattner"
    let shouldDisplayMessage = true
    
    guard let unwrappedRelease = firstRelease, let unwrappedWebsite = website, let unwrappedDesigner = designer, shouldDisplayMessage else {
        return
    }
    
    let message =
        """
        \(language) was first released in \(unwrappedRelease).
        Its website can be found at \(unwrappedWebsite).
        It was designed by \(unwrappedDesigner).
        """
    print(message)
}

runProgram()
