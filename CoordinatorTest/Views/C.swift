//
//  C.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct C: View {
  @StateObject var coordinator = Coordinator(destination: .cView)
  var body: some View {
    VStack {
      Button {
        coordinator.push(destination: .hView)
      } label: {
        Text("Go to H")
      }
      
      coordinator.navigationContext()
    }
    .commonNavigationBar("I'm C")
  }
}

struct C_Previews: PreviewProvider {
  static var previews: some View {
    C()
  }
}
