//
//  HistoryStore.swift
//  FitMan
//
//  Created by Blackswan on 7/15/21.
//

import Foundation

struct ExerciseDay: Identifiable {
	let id = UUID()
	let date: Date
	var exercises: [String] = []
}

struct HistoryStore {
	var exerciseDays: [ExerciseDay] = []
	
	init() {
		#if DEBUG
		createDevData()
		#endif
	}
}


