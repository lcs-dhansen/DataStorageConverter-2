//
//  ContentView.swift
//  iOS-DateStorageConverter
//
//  Created by Devon Hansen on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
   //MARK: stored properties
    @State private var input: String = ""

    //MARK: computed properties
    private var output: String {
        return "You typed in \(input)"
    }
    
    var body: some View {
        
        Form {
            
            TextField("e.g.: 1024", text: $input)
                .keyboardType(.numberPad)
            
            Text(output)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
