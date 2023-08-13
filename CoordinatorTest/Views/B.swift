//
//  B.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct B: View {
  @StateObject var coordinator = Coordinator(destination: .bView)
  var body: some View {
    VStack {
      Button {
        coordinator.push(destination: .cView)
      } label: {
        Text("Go to C")
      }
      
      coordinator.navigationContext()
    }
    .commonNavigationBar("I'm B")
  }
}

struct B_Previews: PreviewProvider {
  static var previews: some View {
    B()
  }
}
