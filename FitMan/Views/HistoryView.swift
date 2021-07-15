//
//  HistoryView.swift
//  FitMan
//
//  Created by Blackswan on 7/13/21.
//

import SwiftUI

struct HistoryView: View {
	let history = HistoryStore()
	let dateFormatter: DateFormatter
	
	//	let today = Date()
	//	let yesterday = Date().addingTimeInterval(-86400)
	//	let exercise1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
	//	let exercise2 = ["Squat", "Step Up", "Burpee"]
	init() {
		dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "MMM d"
	}
	var body: some View {
		ZStack(alignment: .topTrailing) {
			Button(action: {}) {
				Image(systemName: "xmark.circle")
			}
			.font(.title)
			.padding(.trailing)
			
			VStack {
				Text("History")
					.font(.title)
					.padding()
				
				// exercise history
				Form {
					ForEach(history.exerciseDays) { day in
						Section (
							header: Text(dateFormatter.string(from: day.date))
								.font(.headline)
						) {
							ForEach(day.exercises, id: \.self) { exercise in
								Text(exercise)
							}
						}
					}
					//					Section(
					//						header:
					//							Text(dateFormatter.string(from: today))
					//							.font(.headline)) {
					//						// Section content
					//						ForEach(exercise1, id: \.self) {exercise in
					//							Text(exercise)
					//						}
					//					}
					//					Section(
					//						header:
					//							Text(dateFormatter.string(from: today))
					//							.font(.headline)) {
					//						// Section content
					//						ForEach(exercise2, id: \.self) {exercise in
					//							Text(exercise)
					//						}
					//					}
				}
			}
		}
		
	}
}

struct HistoryView_Previews: PreviewProvider {
	static var previews: some View {
		HistoryView()
	}
}
