//
//  Wishlists.swift
//  AirbnbTutorial
//
//  Created by syed asim atiq on 17/01/2026.
//

import SwiftUI
struct Wishlists : View {
    var body: some View {
     NavigationStack{
         VStack{
             VStack(alignment: .leading){
                 Text("Log in to see your wishlists")
                     .font(.headline)
                 Text("You can add items to your wishlists from the listings page")
                     .font(.footnote)
             }
             Button("Log In"){
                 print( "Log In Worked")
             }
             .modifier(PrimaryButtonStyle())
         }
         .padding()
         .navigationTitle( "Wishlists")
         
         Spacer()
        }
    }
}

#Preview {
    Wishlists()
}

struct WishlistButtonStyle :ViewModifier{
    func body(content:Content) -> some View {
        content
    }
}
