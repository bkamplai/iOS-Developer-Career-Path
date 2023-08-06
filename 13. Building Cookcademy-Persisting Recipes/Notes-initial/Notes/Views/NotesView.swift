//
//  NotesView.swift
//  Notes
//
//  Created by John Royal on 7/10/21.
//

import SwiftUI

struct NotesView: View {
  @StateObject var viewModel = NotesViewModel()
  
  var body: some View {
    NavigationView {
      List {
        ForEach(viewModel.notes) { note in
          // Each note gets a NavigationLink that points to the EditNoteView for that note. We can open the EditNoteView programatically by setting the `editingNote` property of the view model to this note’s ID.
          NavigationLink(
            note.title,
            destination: EditNoteView(note: binding(for: note)),
            tag: note.id,
            selection: $viewModel.editingNote
          )
        }
        // The onDelete(perform:) modifier in SwiftUI enables the ability to delete a note from the list by swiping left on it and tapping “Delete”. The actual deletion is carried out by the handleDelete(_:) method from the NotesViewModel.
        .onDelete(perform: viewModel.handleDelete(_:))
      }
      .navigationBarItems(trailing: Button(action: viewModel.createNote) {
        Label("New Note", systemImage: "plus.circle.fill")
      })
      .navigationTitle("My Notes")
    }
    // MARK: - Persistence
    // Add your code here
    .onAppear {
        try! viewModel.load()
    }
    .onChange(of: viewModel.notes) { _ in
        try! viewModel.save()
    }
    
    
    
  }
  
  /// Returns the given note as a binding. This is required because the `EditNoteView` requires a binding so that the note can be edited, and the SwiftUI `ForEach` element doesn’t provide a binding.
  private func binding(for note: Note) -> Binding<Note> {
    guard let index = viewModel.notes.firstIndex(of: note) else {
      fatalError("Cannot find note: \(note)")
    }
    return $viewModel.notes[index]
  }
}

struct NotesView_Previews: PreviewProvider {
  static var previews: some View {
    NotesView()
  }
}
