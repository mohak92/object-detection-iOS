//
//  DetectedObject.swift
//  ObjectDetection
//
//  Created by Mohak Tamhane on 10/19/24.
//


import Foundation

struct DetectedObject: Hashable {
  var label: String
  var confidence: Float
  var boundingBox: CGRect
}
