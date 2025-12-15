//
//  ImageDisplayView.swift
//  ObjectDetection
//
//  Created by Mohak Tamhane on 10/19/24.
//


import SwiftUI

struct ImageDisplayView: View {
  var image: Image

  var body: some View {
    image
      .resizable()
      .scaledToFit()
      .padding(5.0)
      .border(Color.primary)
      .padding(5.0)
  }
}

/*
#Preview {
  ImageDisplayView(image: <#Binding<Image?>#>)
}
*/
