//
//  ImageExtension.swift
//  FitMan
//
//  Created by Blackswan on 7/13/21.
//

import SwiftUI

extension Image {
	func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
		return self
			.resizable()
			.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
			.frame(width: width, height: height)
	}
}
