//
//  ContentView.swift
//  FitMan
//
//  Created by Blackswan on 7/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
			TabView {
				WelcomeView()
				ForEach(0 ..< 4) { number in
					ExerciseView(index: number)
				}
			}
			.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//			.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
