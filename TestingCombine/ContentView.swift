//
//  ContentView.swift
//  TestingCombine
//
//  Created by Preston Grisham on 11/24/20.
//

import SwiftUI

struct User: Codable, Identifiable {
    let name: String
    let id: Int
}

struct ContentView: View {
@StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.time)
                .padding()
            
            List(viewModel.users) { user in
                Text(user.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
