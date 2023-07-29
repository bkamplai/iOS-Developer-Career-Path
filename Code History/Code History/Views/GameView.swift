//
//  ContentView.swift
//  Code History
//
//  Created by Brandon Kamplain on 7/21/23.
//

import SwiftUI

struct GameView: View {
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .background(
//          'init(destination:isActive:label:)' was deprecated in iOS 16.0: use
//          NavigationLink(value:label:), or
//          navigationDestination(isPresented:destination:), inside a
//          NavigationStack or NavigationSplitView
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
        )
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
    }
}

#Preview {
    GameView()
}
