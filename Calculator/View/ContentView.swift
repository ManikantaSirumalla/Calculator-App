//
//  ContentView.swift
//  Calculator
//
//  Created by Manikanta Sirumalla on 02/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.orange.opacity(0.4), .green.opacity(0.5)]), startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(.all)
            KeyView()
        }
      }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
