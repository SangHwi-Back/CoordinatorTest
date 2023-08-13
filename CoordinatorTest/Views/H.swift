//
//  H.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct H: View {
  @EnvironmentObject var sessionManager: SessionManager
  var body: some View {
    VStack {
      Button {
        sessionManager.popToCoordinatorRootView()
      } label: {
        Text("Go to Start")
      }
    }
    .commonNavigationBar("I'm H")
  }
}

struct H_Previews: PreviewProvider {
  static var previews: some View {
    H()
  }
}
