//
//  NB.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct NB: View {
  var body: some View {
    VStack(spacing: 20) {
      NavigationLink {
        NC()
      } label: {
        Text("Go to C")
      }
    }
    .commonNavigationBar("I'm B")
  }
}

