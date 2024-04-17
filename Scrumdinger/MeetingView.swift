//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 石原聡明 on 2024/04/17.
//

import SwiftUI
import SwiftData

struct MeetingView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe").imageScale(.large).foregroundColor(.accentColor)
//        }
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                VStack {
                    Text("Seconds Remaining")
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
            }
        }
    }
}

#Preview {
    MeetingView()
        .modelContainer(for: Item.self, inMemory: true)
}
