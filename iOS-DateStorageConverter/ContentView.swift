//
//  ContentView.swift
//  iOS-DateStorageConverter
//
//  Created by Devon Hansen on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    
    @State private var feeling: String = ""
    
    private var greeting: String {
        return "Hello, \(name), you are \(feeling)"
    }
    var body: some View {
        
        VStack {
            
            TextField("What is your name", text: $name)
            
            Picker("Mood", selection: $feeling) {
                Text("🥳").tag("happy")
                Text("😕").tag("fine")
                Text("🙁").tag("Sad")
            }
            .pickerStyle(SegmentedPickerStyle())
                .padding()
            
            Text(greeting)
                .padding()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
