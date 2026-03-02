//
//  taskView.swift
//  idea 2
//
//  Created by Navneet Dagdiya on 2/3/2026.
//

import SwiftUI

struct taskView: View {
    @State private var tasks: [String] = []
    @State private var newTask = ""

    var body: some View {
        VStack {
            TextField("New task", text: $newTask)
                .textFieldStyle(.roundedBorder)
                .padding()
            
                .onSubmit {
                    let t = newTask.trimmingCharacters(in: .whitespacesAndNewlines)
                    guard !t.isEmpty else { return }
                    tasks.append(t)
                    newTask = ""
                }
            List(tasks, id: \.self, rowContent: Text.init)
        }
        .padding()
    }
}

#Preview { taskView() }
