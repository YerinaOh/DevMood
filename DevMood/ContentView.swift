//
//  ContentView.swift
//  DevMood
//
//  Created by mac on 2021/02/08.
//

import SwiftUI
import CoreData
import RxSwift

struct ContentView: View {
    var title: String = "null"

    var body: some View {
        
        Text(title)
        Button("GOOD") {
        }
        Button("GOOD") {
        }
        Button("GOOD") {
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "title")
    }
}
