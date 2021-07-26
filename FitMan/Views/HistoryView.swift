//
//  HistoryView.swift
//  FitMan
//
//  Created by Blackswan on 7/13/21.
//

import SwiftUI

struct HistoryView: View {
	@Binding var showHistory: Bool

	let history = HistoryStore()
	let dateFormatter: DateFormatter
	
	init(showHistory: Binding<Bool>) {
		dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "d MMMM, yyyy"
		self._showHistory = showHistory
	}
	var body: some View {
		ZStack(alignment: .topTrailing) {
			Button(action: {
				showHistory.toggle()
			}) {
				Image(systemName: "xmark.circle")
			}
			.font(.title)
			.padding()
			
			VStack {
				Text(NSLocalizedString("History", comment: "exercises finished"))
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
				}
			}
		}
		
	}
}

struct HistoryView_Previews: PreviewProvider {
	static var previews: some View {
		HistoryView(showHistory: .constant(true))
	}
}
