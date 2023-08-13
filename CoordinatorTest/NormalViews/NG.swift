//
//  NG.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct NG: View {
  @Binding var rootFActivate: Bool
  var body: some View {
    VStack(spacing: 20) {
      Button {
        rootFActivate.toggle()
      } label: {
        Text("Go to Start")
      }
    }
    .commonNavigationBar("I'm G")
  }
}
