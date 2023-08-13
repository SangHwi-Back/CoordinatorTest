//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import SwiftUI
import Combine

final class Coordinator: ObservableObject {
  @Environment(\.presentationMode) var presentationMode

  @Published private var trigger = false
  @Published private var rootTrigger = false
  
  private let isRoot: Bool
  private var destination: CoordinatorDestination
  private var subscriptions = Set<AnyCancellable>()
  
  init(isRoot: Bool = false, destination: CoordinatorDestination) {
    self.isRoot = isRoot
    self.destination = destination
    
    if isRoot {
      NotificationCenter.default
        .publisher(for: .popToRoot)
        .sink { _ in
          self.rootTrigger = false
        }
        .store(in: &subscriptions)
    }
  }
  
  @ViewBuilder
  func navigationContext() -> some View {
    NavigationLink(isActive: Binding(
      get: getTrigger,
      set: setTrigger(newValue:))
    ) {
      destination.view
    } label: {
      EmptyView()
    }
  }
  
  private func getTrigger() -> Bool {
    isRoot ? rootTrigger : trigger
  }
  
  private func setTrigger(newValue: Bool) {
    if isRoot {
      rootTrigger = newValue
    } else {
      trigger = newValue
    }
  }
  
  func push(destination: CoordinatorDestination) {
    self.destination = destination
    setTrigger(newValue: true)
  }
  
  func popToRoot() {
    NotificationCenter.default
      .post(name: .popToRoot, object: destination)
  }
}

enum CoordinatorDestination {
  case aView, bView, cView, dView, eView, fView, gView, hView
  
  @ViewBuilder
  var view: some View {
    switch self {
    case .aView:
      A()
    case .bView:
      B()
    case .cView:
      C()
    case .dView:
      D()
    case .eView:
      E()
    case .fView:
      F()
    case .gView:
      G()
    case .hView:
      H()
    }
  }
}

extension Notification.Name {
  static var popToRoot = Notification.Name("popToRoot")
}
