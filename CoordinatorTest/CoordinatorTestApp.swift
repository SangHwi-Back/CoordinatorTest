//
//  CoordinatorTestApp.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

@main
struct CoordinatorTestApp: App {
  @StateObject var sessionManager = SessionManager()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(sessionManager)
    }
  }
}
