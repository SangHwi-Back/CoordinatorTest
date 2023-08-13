//
//  SessionManager.swift
//  CoordinatorTest
//
//  Created by 백상휘 on 2023/08/13.
//

import Foundation

class SessionManager: ObservableObject {
  @Published private(set) var coordinatorID = UUID()
  @Published private(set) var normalID = UUID()
  
  func popToCoordinatorRootView() {
    self.coordinatorID = .init()
  }
  
  func popToNormalRootView() {
    self.normalID = .init()
  }
}
