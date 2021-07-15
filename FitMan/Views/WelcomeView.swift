//
//  WelcomeView.swift
//  FitMan
//
//  Created by Blackswan on 7/8/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
			ZStack {
				VStack {
					HeaderView(titleText: "Welcome")
					Spacer()
					Button("History") {}
						.padding(.bottom)
					
				}
				VStack {
					HStack(alignment: .bottom) {
						VStack(alignment: .leading) {
							Text("Get fit")
								.font(.largeTitle)
							Text("with high intensity interval training")
								.font(.headline)
						}
						Image("step-up")
							.resizedToFill(width: 240, height: 240)
							.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
					}
					Button(action: {}) {
						Text("Get Started")
						Image(systemName: "arrow.right.circle")
//						Label("Get Started", systemImage: "arrow.right.circle")
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
        WelcomeView()
    }
}
