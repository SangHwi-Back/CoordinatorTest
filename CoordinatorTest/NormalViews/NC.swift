//
//  NC.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct NC: View {
  var body: some View {
    VStack(spacing: 20) {
      NavigationLink {
        NH()
      } label: {
        Text("Go to H")
      }
    }
    .commonNavigationBar("I'm C")
  }
}
