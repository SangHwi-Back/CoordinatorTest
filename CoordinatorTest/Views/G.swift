//
//  G.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct G: View {
  @StateObject var coordinator = Coordinator(destination: .gView)
  var body: some View {
    VStack(spacing: 20) {
      Button {
        coordinator.popToRoot()
      } label: {
        Text("Go to A(Root)")
      }
      
      coordinator.navigationContext()
    }
    .commonNavigationBar("I'm G")
  }
}

struct G_Previews: PreviewProvider {
  static var previews: some View {
    G()
  }
}
