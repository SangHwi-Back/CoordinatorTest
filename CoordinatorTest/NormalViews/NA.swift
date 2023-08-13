//
//  NA.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct NA: View {
  @State var rootFActivate = false
  @State var rootDActivate = false
  
  var body: some View {
    VStack(spacing: 20) {
      NavigationLink(isActive: $rootFActivate) {
        NF(rootFActivate: $rootFActivate)
      } label: {
        Text("Go to F")
      }
      
      NavigationLink {
        NB()
      } label: {
        Text("Go to B")
      }
      
      NavigationLink(isActive: $rootDActivate) {
        ND(rootDActivate: $rootDActivate)
      } label: {
        Text("Go to D")
      }
      .padding(.bottom, 20)
      
      Image("ViewStructure")
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
    .commonNavigationBar("I'm A")
  }
}

struct NA_Previews: PreviewProvider {
  static var previews: some View {
    NA()
  }
}
