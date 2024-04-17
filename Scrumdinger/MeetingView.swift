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
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed").font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining").font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle().strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }.accesibilityLabel("Next Speaker")
            }
        }
        .padding()
    }
}

#Preview {
    MeetingView()
        .modelContainer(for: Item.self, inMemory: true)
}
