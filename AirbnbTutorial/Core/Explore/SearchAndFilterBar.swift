//
//  SearchAndFilterBar.swift
//  AirbnbTutorial
//
//  Created by syed asim atiq on 27/12/2025.
//

import Foundation
import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
       
        
        HStack {
            Image(systemName: "magnifyingglass")
                VStack(alignment: .leading){
                    Text("Where to?")
                        .fontWeight(.semibold)
                        .font(.footnote)
                    
                    Text("Anywhere - Anyway - Add guests")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
            Spacer()
            //Button
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
            
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .overlay{
            Capsule()
                .stroke(Color.gray, lineWidth: 0.5)
                .shadow(color: .black.opacity(0.4),radius: 3)
        }
        .padding()
        
    }
}
#Preview {
    SearchAndFilterBar()
}
