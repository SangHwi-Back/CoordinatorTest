//
//  NE.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct NE: View {
  @Binding var rootDActivate: Bool
  var body: some View {
    VStack(spacing: 20) {
      Button {
        rootDActivate.toggle()
      } label: {
        Text("Go to Start")
      }
    }
    .commonNavigationBar("I'm E")
  }
}
