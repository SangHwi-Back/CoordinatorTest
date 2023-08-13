//
//  A.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI

struct A: View {
  @StateObject var coordinator = Coordinator(isRoot: true, destination: .aView)
  
  var body: some View {
    VStack(spacing: 20) {
      coordinator.navigationContext()
      
      Button {
        coordinator.push(destination: .fView)
      } label: {
        Text("Go to F")
      }
      
      Button {
        coordinator.push(destination: .bView)
      } label: {
        Text("Go to B")
      }
      
      Button {
        coordinator.push(destination: .dView)
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

struct A_Previews: PreviewProvider {
  static var previews: some View {
    A()
  }
}

struct CommonNavigationBar: ViewModifier {
  var barTitle: String
  func body(content: Content) -> some View {
    content
      .navigationTitle(barTitle)
      .navigationBarBackButtonHidden()
  }
}

extension View {
  func commonNavigationBar(_ barTitle: String) -> some View {
    self.modifier(CommonNavigationBar(barTitle: barTitle))
  }
}
