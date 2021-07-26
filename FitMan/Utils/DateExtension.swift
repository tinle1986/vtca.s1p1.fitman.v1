//
//  DateExtension.swift
//  FitMan
//
//  Created by Blackswan on 7/26/21.
//

import Foundation

extension Date {
	func formatted(as format: String) -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = format
		return dateFormatter.string(from: self)
	}
	
	var yearMonthDay: String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "yyyy MM dd"
		return dateFormatter.string(from: self)
	}
	
	func isSameDay(as day: Date) -> Bool {
		return self.yearMonthDay == day.yearMonthDay
	}
	
	func dateName() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "EEEE"
		return dateFormatter.string(from: self)
	}
}
