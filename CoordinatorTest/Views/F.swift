//
//  F.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct F: View {
  @StateObject var coordinator = Coordinator(destination: .fView)
  var body: some View {
    VStack(spacing: 20) {
      Button {
        coordinator.push(destination: .gView)
      } label: {
        Text("Go to G")
      }
      
      coordinator.navigationContext()
    }
    .commonNavigationBar("I'm F")
  }
}

struct F_Previews: PreviewProvider {
  static var previews: some View {
    F()
  }
}
