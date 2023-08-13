//
//  E.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct E: View {
  @StateObject var coordinator = Coordinator(destination: .eView)
  var body: some View {
    VStack {
      Button {
        coordinator.popToRoot()
      } label: {
        Text("Go to A(Root)")
      }
      
      coordinator.navigationContext()
    }
    .commonNavigationBar("I'm E")
  }
}

struct E_Previews: PreviewProvider {
  static var previews: some View {
    E()
  }
}
