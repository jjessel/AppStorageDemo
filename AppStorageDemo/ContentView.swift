//
//  ContentView.swift
//  AppStorageDemo
//
//  Created by Jeremiah Jessel on 9/9/20.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("notificationsEnabled") var notificationsEnabled = false
    @AppStorage("lastNameEntered") var lastNameEntered = ""
    @State var name: String = ""

    var body: some View {
        VStack {
            Spacer()
            Toggle("Notifications", isOn: $notificationsEnabled)
            TextField("Name", text: $name)
            Button("Submit") {
                UserDefaults.standard.setValue(name, forKey: "lastNameEntered")
            }
            Spacer()
            Text("The last name you entered was \(lastNameEntered)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
