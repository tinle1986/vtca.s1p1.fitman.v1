//
//  SuccessView.swift
//  FitMan
//
//  Created by Blackswan on 7/14/21.
//

import SwiftUI

struct SuccessView: View {
	@Environment(\.presentationMode) var presentationMode
	@Binding var selectedTab: Int
	
	var body: some View {
		ZStack {
			VStack {
				Spacer()
				Button(NSLocalizedString("Continue", comment: "keep going to next screen")) {
					selectedTab = 9
					presentationMode.wrappedValue.dismiss()
				}
				.padding()
			}
			VStack {
				Image(systemName: "hand.raised.fill")
					.resizable(resizingMode: .tile)
					.aspectRatio(contentMode: .fill)
					.frame(width: 75.0, height: 75.0)
					.foregroundColor(.purple)
					.padding()
				Text("High Five!")
					.fontWeight(.heavy)
				VStack {
					Text("Good job completing all four exercises!")
					Text("Remember tomorrow's another day.")
					Text("So eat well and get some rest.")
				}
				.foregroundColor(.gray)
				
			}
		}
	}
}

struct SuccessView_Previews: PreviewProvider {
	static var previews: some View {
		SuccessView(selectedTab: .constant(3))
	}
}
