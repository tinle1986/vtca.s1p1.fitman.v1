//
//  HeaderView.swift
//  FitMan
//
//  Created by Blackswan on 7/10/21.
//

import SwiftUI

struct HeaderView: View {
	@Binding var selectedTab: Int
	let titleText: String
	var body: some View {
		VStack {
			Text(titleText)
				.font(.largeTitle)
			HStack {
				ForEach(0 ..< Exercise.exercises.count) {
					index in
					let fill = index == selectedTab ? ".fill" : ""
					Image(systemName: "\(index + 1).circle\(fill)")
						.onTapGesture {
							selectedTab = index
						}
				}
			}
			.font(.title2)
		}
	}
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
			Group {
//				HeaderView(titleText: "Squat")
//					.previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
				HeaderView(selectedTab: .constant(0), titleText: "Boomba")
					.preferredColorScheme(.dark)
					.environment(\.sizeCategory, .accessibilityLarge)
					.previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
			}
    }
}
