//
//  ContentView.swift
//  idea 2
//
//  Created by Navneet Dagdiya on 2/3/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 255/255, green: 255/255, blue: 0xF2/255)
                .ignoresSafeArea()
            
            TabView {
                notesView()
                    .tabItem {
                        Label("Notes", systemImage: "note.text")  // tab label
                    }
                
                taskView()
                    .tabItem {
                        Label("Tasks", systemImage: "checklist")  // tab label
                    }
            }        }
    }
}
#Preview {
    ContentView()
}
