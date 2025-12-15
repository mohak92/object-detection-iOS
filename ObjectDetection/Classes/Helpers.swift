//
//  Helpers.swift
//  ObjectDetection
//
//  Created by Mohak Tamhane on 10/19/24.
//

import Foundation

extension CGFloat {
  var roundTwo: String {
    return String(format: "%.2f", self)
  }
}

extension CGRect {
  func asString() -> String {
    return "origin: (\(self.origin.x.roundTwo), \(self.origin.y.roundTwo))" +
    "size: (\(self.size.width.roundTwo) x \(self.size.height.roundTwo))"
  }
}
