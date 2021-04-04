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
    @Environment(\.managedObjectContext) private var viewContext
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
    
    var viewModel: AnnounceViewModel! {
        didSet {
          self.viewModel.moodDidChange = { vm in
            self.title = vm.announce ?? ""
          }
        }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: AnnounceViewModel(mood: Mood(count: 10)))
    }
}
