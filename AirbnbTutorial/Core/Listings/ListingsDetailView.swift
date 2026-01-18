////
////  ListingsDetailView.swift
////  AirbnbTutorial
////
////  Created by syed asim atiq on 28/12/2025.
////
//
//import Foundation
//import SwiftUI
//import MapKit
//
//struct ListingsDetailView : View {
//    @Environment(\.dismiss) var dismiss
//    var body : some View {
//        ZStack(alignment:.topLeading){
//            
//            ScrollView {
//                
//                VStack{
//                    ListingImageCarouselView()
//                        .frame(height: 430)
//                }
//                
//                VStack{
//                    
//                    // Short details
//                    VStack(alignment: .leading){
//                        Text("Miami Villa")
//                            .font(.title)
//                            .fontWeight(.bold)
//                        //Rating and Review
//                        HStack{
//                            RatingView()
//                            Text("-")
//                            Text("28 reviews")
//                                .fontWeight(.semibold)
//                        }
//                            
//                        Text("Miami Florida")
//                            .font(.subheadline)
//
//                            
//                            
//                    }
//                }
//                .padding(.leading)
//                .frame(maxWidth: .infinity,alignment: .leading)
//                
//                Divider()
//                
//                HStack{
//                    VStack(alignment: .leading){
//                        Text("Entire Villa hosted by John Smith")
//                            .font(.headline)
//                            .lineSpacing(-15)
//                            .frame(width: 250,alignment: .leading)
//                        
//                        HStack{
//                            Text("4 guests -")
//                            Text("2 bedrooms -")
//                            Text("2 beds -")
//                            Text("3 baths")
//                                .padding(.leading,5)
//                                
//                        }
//                        .font(.caption)
//                    }
//                    Spacer()
//                    
//                    //Image
//                    Image("male-profile-photo")
//                        .resizable()
//                        .frame(width: 70, height: 70)
//                        .clipShape(Circle())
//                }
//                .padding(.horizontal)
//                
//                Divider()
//                
//                //Listing Feature
//                VStack(alignment: .leading) {
//                    
//                    ForEach(1..<3) { feature in
//                        HStack {
//                                
//                                Image(systemName: "medal")
//                                 VStack(alignment: .leading){
//                                    Text("Superhost")
//                                         .font(.footnote)
//                                         .fontWeight(.semibold)
//                                     Text("John Smith has been Superhost for over 10 years.")
//                                         .font(.footnote)
//                            }
//                        }
//                        .frame(maxWidth: .infinity,alignment: .leading)
//                        
//                            
//                    }
//                    .padding(.horizontal)
//                        
//                    
//                    
//                }
//                
//                Divider()
//                
//                // Bedroom View
//                VStack(alignment: .leading) {
//                    Text("Where you'll sleep")
//                        .fontWeight(.semibold)
//                    
//                    ScrollView(.horizontal, showsIndicators: false) {
//                        HStack(spacing:16) {
//                            ForEach(1..<5) { bedroom in
//                                VStack(alignment: .leading){
//                                    Image(systemName: "bed.double")
//                                    Text("Bedroom")
//                                 }
//                                .frame(width: 132,height: 100)
//                                .overlay{
//                                    RoundedRectangle(cornerRadius: 10)
//                                        .stroke(lineWidth: 1)
//                                        .foregroundStyle(.gray)
//                                }
//                            }
//                            
//                        }
//                    }
//                    .scrollTargetBehavior(.paging)
//                    
//                }
//                .padding()
//                
//                Divider()
//                
//                //Service Offers
//                VStack(alignment: .leading, spacing: 16) {
//                    Text("What this place offers")
//                        .font(.headline)
//                    
//                       ForEach(1..<6) { feature in
//                           HStack{
//                                  Image(systemName: "wifi")
//                                   Text("Free high-speed Wi-Fi")
//                               }
//                        }
//                      
//                    
//                    }
//                    .frame(maxWidth: .infinity,alignment: .leading)
//                    .padding()
//                
//                Divider()
//                //Map
//                VStack(alignment:.leading){
//                    Text("where you`ll be")
//                        .font(.headline)
//                    
//                    Map()
//                        .frame(height: 200)
//                        .clipShape(RoundedRectangle(cornerRadius: 20))
//                        
//                }
//                .padding(.bottom,140)
//                
//                
//                } //Scrolview
//            .ignoresSafeArea()
//            .overlay(alignment:.bottom){
//                Divider()
//                VStack{
//
//                    HStack{
//                        VStack(alignment:.leading){
//                            Text("$500")
//                                .fontWeight(.semibold)
//                            Text("Total before taxes")
//                            Text("Oct 15 - 2")
//                        }
//                        
//                        Spacer()
//                        
//                        Button {
//                            
//                        } label: {
//                            Text("Reserve")
//                                .foregroundStyle(.white)
//                                .font(.subheadline)
//                                .frame(width: 150, height: 40)
//                                .background(.pink)
//                                .clipShape(RoundedRectangle(cornerRadius: 10))
//                            
//                        }
//                        .padding(.bottom, 20)
//                        .frame(maxWidth: .infinity,alignment: .trailing)
//                            
//                    }
//                    
//                    
//                }
//                .padding(.horizontal)
//                .padding(.top, 10)
//                .background(.white)
//                
//                
//            }
//            
//            Button {
//                dismiss()
//            }label: {
//              Image(systemName: "chevron.left")
//                    .foregroundStyle(.black)
//                    .background {
//                        Circle()
//                            .fill(.white)
//                            .frame(width: 30, height: 30)
//                    }
//                    .padding(32)
//                    
//            }
//        }
//        .toolbar(.hidden)
//        .navigationBarBackButtonHidden()
//        
//            
//            
//            
//        }
//    }
//
//
//
//#Preview {
//    ListingsDetailView()
//}
import SwiftUI
import MapKit
  struct ListingsDetailView: View {
      @Environment(\.dismiss) var dismiss // This is defined here
    
    var body: some View {
        ScrollView {
            //Image Slides
            VStack{
                ListingImageCarouselView()
                    .frame(height: 430)
                    .overlay(alignment:.topLeading){
                        Button {
                            dismiss()
                        }label: {
                            Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .background {
                            Circle()
                            .fill(.white)
                            .frame(width: 30, height: 30)
                        }
                            .padding(.top,60)
                            .padding(.horizontal,20)
                        }
                    }
            }
            
            //Heading
            VStack{

            // Short details
            VStack(alignment: .leading){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.bold)
                //Rating and Review
                HStack{
                    RatingView()
                    Text("-")
                    Text("28 reviews")
                        .fontWeight(.semibold)
                }

                Text("Miami Florida")
                    .font(.subheadline)



            }
        }
            .padding(.leading)
            .frame(maxWidth: .infinity,alignment: .leading)

            Divider()
            
            //Sub-Info
            HStack{
                VStack(alignment: .leading){
                    Text("Entire Villa hosted by John Smith")
                        .font(.headline)
                        .lineSpacing(-15)
                        .frame(width: 250,alignment: .leading)

                    HStack{
                        Text("4 guests -")
                        Text("2 bedrooms -")
                        Text("2 beds -")
                        Text("3 baths")
                            .padding(.leading,5)

                    }
                    .font(.caption)
                }
                Spacer()

                //Image
                Image("male-profile-photo")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
            }
            .padding(.horizontal)

            Divider()
            
            //Listing Feature
            VStack(alignment: .leading) {

                ForEach(1..<3) { feature in
                    HStack {

                            Image(systemName: "medal")
                             VStack(alignment: .leading){
                                Text("Superhost")
                                     .font(.footnote)
                                     .fontWeight(.semibold)
                                 Text("John Smith has been Superhost for over 10 years.")
                                     .font(.footnote)
                        }
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)


                }
                .padding(.horizontal)



            }

            Divider()

            // Bedroom View
            VStack(alignment: .leading) {
                Text("Where you'll sleep")
                    .fontWeight(.semibold)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing:16) {
                        ForEach(1..<5) { bedroom in
                            VStack(alignment: .leading){
                                Image(systemName: "bed.double")
                                Text("Bedroom")
                             }
                            .frame(width: 132,height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }

                    }
                }
                .scrollTargetBehavior(.paging)

            }
            .padding()

            Divider()

            //Service Offers
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)

                   ForEach(1..<6) { feature in
                       HStack{
                              Image(systemName: "wifi")
                               Text("Free high-speed Wi-Fi")
                           }
                    }


                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()

            Divider()
            
            //Map
            VStack(alignment:.leading){
                Text("where you`ll be")
                    .font(.headline)

                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

            }
            .padding(.bottom,140)
            
            
            
        } //ScrollView End
        .navigationBarBackButtonHidden()
        .toolbarBackground(.hidden, for: .navigationBar)
        .toolbar(.hidden, for: .navigationBar)
        .ignoresSafeArea(edges: .top)
        .overlay(alignment:.bottom){
            Divider()
            VStack{

                HStack{
                    VStack(alignment:.leading){
                        Text("$500")
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                        Text("Oct 15 - 2")
                    }

                    Spacer()

                    Button {

                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .frame(width: 150, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 10))

                    }
                    .padding(.bottom, 20)
                    .frame(maxWidth: .infinity,alignment: .trailing)

                }


            }
            .padding(.horizontal)
            .padding(.top, 10)
            .background(.white)
        }
    }
}

#Preview {
    ListingsDetailView()
}


