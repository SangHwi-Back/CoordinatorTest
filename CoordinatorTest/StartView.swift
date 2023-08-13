//
//  StartView.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct StartView: View {
  @EnvironmentObject var sessionManager: SessionManager
  var body: some View {
    VStack(spacing: 50) {
      Text("Start View")
        .font(.largeTitle)
      Text("Coordinator")
        .font(.subheadline)
      
      NavigationLink {
        A()
      } label: {
        Text("Start")
          .font(.title)
          .foregroundColor(.red)
      }
    }
    .id(sessionManager.coordinatorID)
  }
}

struct StartView_Previews: PreviewProvider {
  static var previews: some View {
    StartView()
  }
}
