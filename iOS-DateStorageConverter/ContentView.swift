//
//  ContentView.swift
//  iOS-DateStorageConverter
//
//  Created by Devon Hansen on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    
    private var greeting: String {
        return "Hello, \(name)"
    }
    var body: some View {
        
        VStack {
            
            TextField("What is your name", text: $name)
            
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
