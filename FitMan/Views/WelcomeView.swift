//
//  WelcomeView.swift
//  FitMan
//
//  Created by Blackswan on 7/8/21.
//

import SwiftUI

struct WelcomeView: View {
	@Binding var selectedTab: Int
	@State private var showHistory = false
	
	var body: some View {
		ZStack {
			VStack {
				HeaderView(selectedTab: $selectedTab, titleText: NSLocalizedString("Welcome", comment: "greeting"))
				Spacer()
				Button(NSLocalizedString("History", comment: "view user activity")) {
					showHistory.toggle()
				}
				.sheet(isPresented: $showHistory) {
					HistoryView(showHistory: $showHistory)
				}
			}
			.padding(.bottom)
			
			VStack {
				HStack(alignment: .bottom) {
					VStack(alignment: .leading) {
						Text(NSLocalizedString("Get fit", comment: "invitation to exercise"))
							.font(.largeTitle)
						Text("with high intensity interval training")
							.font(.headline)
					}
					Image("step-up")
						.resizedToFill(width: 240, height: 240)
						.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
				}
				Button(action: {
					selectedTab = 0
				}) {
					Text(NSLocalizedString("Get Started", comment: "invitation"))
					Image(systemName: "arrow.right.circle")
				}
				.font(.title2)
				.padding()
				.background(RoundedRectangle(cornerRadius: 20)
											.stroke(Color.gray, lineWidth: 2))
			}
		}
	}
}

struct WelcomeView_Previews: PreviewProvider {
	static var previews: some View {
		WelcomeView(selectedTab: .constant(9))
	}
}
