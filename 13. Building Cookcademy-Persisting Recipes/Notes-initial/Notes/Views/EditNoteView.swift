//
//  EditNoteView.swift
//  Notes
//
//  Created by John Royal on 7/10/21.
//

import SwiftUI

struct EditNoteView: View {
  @Binding var note: Note
  
  var body: some View {
    Form {
      Section(header: Text("Title")) {
        TextField("Title", text: $note.title)
      }
      Section(header: Text("Note")) {
        TextEditor(text: $note.content)
      }
    }
    .navigationTitle("Edit “\(note.title)”")
  }
}

struct EditNoteView_Previews: PreviewProvider {
  @State private static var note = Note(id: UUID(), title: "New Note", content: "This is some content...")
  
  static var previews: some View {
    NavigationView {
      EditNoteView(note: $note)
    }
  }
}
