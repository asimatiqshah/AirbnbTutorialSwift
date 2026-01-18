//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by syed asim atiq on 26/12/2025.
//

import SwiftUI
import Foundation

struct ListingItemView: View {
    var body: some View {
        
        var images = ["listing-1", "listing-2", "listing-3","listing-4"]
        
        VStack(spacing: 8){
            //images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listings
            HStack(alignment:.top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 ml away from the beach")
                        .foregroundColor(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                   HStack {
                       Text("$567")
                           .fontWeight(.semibold)
                       Text("night")
                    }
                    
                }
                Spacer() // <--- THIS pushes the content to the edges
                
                //Rating
                RatingView()
            }
            .font(.footnote)
        }
        .padding()
        
    }
}

#Preview {
    ListingItemView()
}
