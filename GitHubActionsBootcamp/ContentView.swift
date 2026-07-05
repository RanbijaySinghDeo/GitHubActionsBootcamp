//
//  ContentView.swift
//  GitHubActionsBootcamp
//
//  Created by Ranbijay SinghDeo on 04/07/26.
//

import SwiftUI

struct ContentView: View {

    @State private var name: String = ""
    @State private var message: String = ""

    var body: some View {
        VStack(spacing: 20) {

            Text("Simple Form")
                .font(.title)

            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)

            Button("Submit") {
                if ContentView.isValidName(name) {
                    message = "Welcome, \(name)!"
                } else {
                    message = "Name cannot be empty."
                }
            }
            .buttonStyle(.borderedProminent)

            Text(message)
                .foregroundStyle(message.contains("Welcome") ? .green : .red)

            Spacer()
        }
        .padding()
    }

    static func isValidName(_ name: String) -> Bool {
        return !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}

#Preview {
    ContentView()
}
