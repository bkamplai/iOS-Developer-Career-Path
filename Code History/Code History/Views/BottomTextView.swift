//
//  BottomTextView.swift
//  Code History
//
//  Created by Brandon Kamplain on 7/23/23.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        } .background(GameColor.accent)
    }
}

#Preview {
    BottomTextView(str: "Test")
}
