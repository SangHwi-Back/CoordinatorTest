//
//  NH.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct NH: View {
  @EnvironmentObject var sessionManager: SessionManager
  
  var body: some View {
    VStack(spacing: 20) {
      Button {
        sessionManager.popToNormalRootView()
      } label: {
        Text("Go to Start")
      }
    }
    .commonNavigationBar("I'm H")
  }
}

struct NH_Previews: PreviewProvider {
  static var previews: some View {
    NH()
  }
}
