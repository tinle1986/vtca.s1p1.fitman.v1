//
//  Exercise.swift
//  FitMan
//
//  Created by Blackswan on 7/15/21.
//

import SwiftUI

struct Exercise {
	let exerciseName: String
	let videoName: String
	
	enum ExerciseEnum: CustomStringConvertible {
		case squat
		case stepUp
		case burpee
		case sunSalute
		
		var description: String {
			switch self {
			case .squat:
				return NSLocalizedString("Squat", comment: "exercise")
			case .stepUp:
				return NSLocalizedString("Step Up", comment: "exercise")
			case .burpee:
				return NSLocalizedString("Burpee", comment: "exercise")
			case .sunSalute:
				return NSLocalizedString(
					"Sun Salute", comment: "yoga stretch")
			}
		}
	}
	
	
	//	enum ExerciseEnum: CustomStringConvertible {
	//		case squat
	//		case stepUp
	//		case burpee
	//		case sunSalute
	//
	//		var description: String {
	//			switch self {
	//			case .squat:
	//				return NSLocalizedString("Squat", comment: "exercise")
	//			case .stepUp:
	//				<#code#>
	//			case .burpee:
	//				<#code#>
	//			case .sunSalute:
	//				<#code#>
	//			}
	//		}
	//	}
	
	//	enum ExerciseEnum: String {
	//		case squat = "Squat"
	//		case stepUp = "Step Up"
	//		case burpee = "Burpee"
	//		case sunSalute = "Sun Salute"
	//	}
}

extension Exercise {
	static let exercises = [
		Exercise(
			exerciseName: String(describing: ExerciseEnum.squat),
			videoName: "squat"),
		Exercise(
			exerciseName: String(describing: ExerciseEnum.stepUp),
			videoName: "step-up"),
		Exercise(
			exerciseName: String(describing: ExerciseEnum.burpee),
			videoName: "burpee"),
		Exercise(
			exerciseName: String(describing: ExerciseEnum.sunSalute),
			videoName: "sun-salute")
	]
}


//extension Exercise {
//	static let exercises = [
//		Exercise(exerciseName: ExerciseEnum.squat.rawValue, videoName: "squat"),
//		Exercise(exerciseName: ExerciseEnum.stepUp.rawValue, videoName: "step-up"),
//		Exercise(exerciseName: ExerciseEnum.burpee.rawValue, videoName: "burpee"),
//		Exercise(exerciseName: ExerciseEnum.sunSalute.rawValue, videoName: "sun-salute"),
//	]
//}
