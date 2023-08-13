//
//  NF.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct NF: View {
  @Binding var rootFActivate: Bool
  var body: some View {
    VStack(spacing: 20) {
      NavigationLink {
        NG(rootFActivate: $rootFActivate)
      } label: {
        Text("Go to G")
      }
    }
    .commonNavigationBar("I'm F")
  }
}
