//
//  StartNormalView.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct StartNormalView: View {
  @EnvironmentObject var sessionManager: SessionManager
  var body: some View {
    VStack(spacing: 50) {
      Text("Start View")
        .font(.largeTitle)
      Text("Normal way")
        .font(.subheadline)
      
      NavigationLink {
        NA()
      } label: {
        Text("Start")
          .font(.title)
          .foregroundColor(.red)
      }
    }
    .id(sessionManager.normalID)
  }
}

struct StartNormalView_Previews: PreviewProvider {
  static var previews: some View {
    StartNormalView()
  }
}
