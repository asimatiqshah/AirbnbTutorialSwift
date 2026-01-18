//
//  Rating.swift
//  AirbnbTutorial
//
//  Created by syed asim atiq on 28/12/2025.
//

import Foundation
import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack(spacing:4){
            Image(systemName: "star.fill")
            Text("4.9")
        }
    }
}

#Preview {
    RatingView()
}
