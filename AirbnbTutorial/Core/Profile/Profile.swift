//
//  Profile.swift
//  AirbnbTutorial
//
//  Created by syed asim atiq on 16/01/2026.
//

import SwiftUI

struct Profile : View {
    var body:some View {
        NavigationStack{
            VStack(alignment:.leading,spacing: 20) {
                VStack(alignment:.leading){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Log in to start planning your next trip")
                        .font(.subheadline)
                }
                
                Button("Log In"){
                    print( "Log In Worked")
                }
                .modifier(PrimaryButtonStyle())
                
                HStack{
                    Text("Don't have an account?")
                        
                    Button {
                        // Handler
                    } label : {
                        Text("Sign Up")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                            .underline(true)
                    }
                    
                }
                .font(.subheadline)
                
                VStack(spacing:16){
                    
                    // Settings Tabs
                    Divider()
                    ProfileRow(iconName: "arrow.right.circle", title: "Settings")

                    Divider()
                    ProfileRow(iconName: "arrow.right.circle", title: "Accessibility")
                    
                    Divider()
                    ProfileRow(iconName: "arrow.right.circle", title: "Visit the Help Center")
                }
                
            }
            .padding()
        }
        
    }
}

#Preview {
    Profile()
}

//Modifier

struct PrimaryButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(maxWidth: .infinity)
            .foregroundStyle(.white)
            .padding()
            .background(Color.red)
            .cornerRadius(10)
    }
}

struct ProfileRow : View {
    let iconName: String
    let title: String
    
    var body:some View {
        NavigationLink(destination: Text("Destination")){
            VStack{
                HStack{
                    
                    Image(systemName: iconName)
                    Text(title)
                        .font(.headline)
                 
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }
            }
            .foregroundStyle(.black)
        }
    }
}
