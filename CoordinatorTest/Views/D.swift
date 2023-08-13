//
//  D.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct D: View {
  @StateObject var coordinator = Coordinator(destination: .dView)
  var body: some View {
    VStack {
      Button {
        coordinator.push(destination: .eView)
      } label: {
        Text("Go to E")
      }
      
      coordinator.navigationContext()
    }
    .commonNavigationBar("I'm D")
  }
}

struct D_Previews: PreviewProvider {
  static var previews: some View {
    D()
  }
}
