//
//  ND.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct ND: View {
  @Binding var rootDActivate: Bool
  var body: some View {
    VStack(spacing: 20) {
      NavigationLink {
        NE(rootDActivate: $rootDActivate)
      } label: {
        Text("Go to E")
      }
    }
    .commonNavigationBar("I'm D")
  }
}
