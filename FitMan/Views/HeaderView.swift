//
//  HeaderView.swift
//  FitMan
//
//  Created by Blackswan on 7/10/21.
//

import SwiftUI

struct HeaderView: View {
	let titleText: String
	var body: some View {
		VStack {
			Text(titleText)
				.font(.largeTitle)
			HStack {
				Image(systemName: "hand.wave")
				Image(systemName: "1.circle")
				Image(systemName: "2.circle")
				Image(systemName: "3.circle")
				Image(systemName: "4.circle")
			}
			.font(.title2)
		}
	}
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
			Group {
				HeaderView(titleText: "Squat")
					.previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
				HeaderView(titleText: "Boomba")
					.preferredColorScheme(.dark)
					.environment(\.sizeCategory, .accessibilityLarge)
					.previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
			}
    }
}
