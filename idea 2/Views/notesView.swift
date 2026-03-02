//
//  notesView.swift
//  idea 2
//
//  Created by Navneet Dagdiya on 2/3/2026.
//

import SwiftUI

struct notesView: View {
    @State private var text = ""
    var body: some View {
        VStack {
            Text("Your Notes")
                .font(.largeTitle)
                .padding()
                
            TextField("type here!", text: $text)
                .padding()
                .textFieldStyle(.roundedBorder)
        }
        
    }
}

#Preview {
    notesView()
}
