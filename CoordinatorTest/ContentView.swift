//
//  ContentView.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct ContentView: View {
  @State var selection = Tabs.coordinator
  
  var body: some View {
    TabView(selection: $selection) {
      NavigationView {
        StartView()
      }
      .navigationViewStyle(.stack)
      .tabItem {
        Text(Tabs.coordinator.rawValue.uppercased())
      }
      
      NavigationView {
        StartNormalView()
      }
      .navigationViewStyle(.stack)
      .tabItem {
        Text(Tabs.normal.rawValue.uppercased())
      }
    }
  }
  
  enum Tabs: String {
    case coordinator, normal
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
