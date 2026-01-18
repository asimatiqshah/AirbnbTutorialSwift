//
//  ExploreView.swift
//  AirbnbTutorial
//
//  Created by syed asim atiq on 26/12/2025.
//
import SwiftUI
import Foundation

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        
      NavigationStack{
//          if showDestinationSearchView {
//              DestinationSearchView(show : $showDestinationSearchView)
//                  
//          } else {
//              
//          }
          
          ScrollView {
              SearchAndFilterBar()
                  .onTapGesture {
                      withAnimation(.snappy){
                          showDestinationSearchView.toggle()
                      }
                  }
              LazyVStack(spacing:20) {
                  ForEach(0 ... 4,id: \.self){ listing in
                      NavigationLink (value: listing){
                          ListingItemView()
                               .frame(height: 430)
                               .clipShape(RoundedRectangle(cornerRadius: 10))
                               .foregroundStyle(.black)
                          }
                      }
                  }
               }
              .navigationDestination(for: Int.self){ listing in
                  ListingsDetailView()
              }
        
                     .sheet(isPresented: $showDestinationSearchView) {
                         DestinationSearchView(show: $showDestinationSearchView)
                     }
          
         
           }
        
        }
    
}
#Preview {
    ExploreView()
}
