//
//  ContentView.swift
//  Login_D3
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/14.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center){
                Spacer()
                Text("Sign In")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.bottom, 20)
                ZStack {
                    HStack{
                        Image(systemName: "envelope.fill")
                        Text("Email Address")
                    }
                    .foregroundColor(.black)
                    .padding(.leading, -160)
                    .opacity(0.1)
                    
                    
                    TextField("", text: $email)
                        .frame(width: 350, height: 60)
                        .background(
                            Color(.gray)
                                .opacity(0.2))
                        .cornerRadius(20)
                }
                
                
                ZStack {
                    HStack{
                        Image(systemName: "lock")
                        Text("Password")
                    }
                    .foregroundColor(.black)
                    .padding(.leading, -160)
                    .opacity(0.1)
                    
                    SecureField("", text: $password)
                        .frame(width: 350, height: 60)
                        .background(
                            Color(.gray)
                                .opacity(0.2))
                        .cornerRadius(20)
                }
    
                
                Text("Forgot Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.leading, 230)
                
                Spacer()
                
                Text("Sign In")
                    .foregroundColor(.white)
                    .frame(width: 350, height: 60)
                    .font(.headline)
                    .bold()
                    .background(Color(.black))
                    .cornerRadius(20)
                    .padding(.bottom, 40)
                HStack{
                    Rectangle()
                        .frame(width: 150, height: 2)
                        .foregroundColor(.gray)
                    
                    Text("or")
                    
                    Rectangle()
                        .frame(width: 150, height: 2)
                        .foregroundColor(.gray)
                        .opacity(0.4)
                }
                .opacity(0.4)
                HStack{
                    Image("google")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .padding()
                    Image("facebook")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .padding()
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .padding()
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                NavigationLink{
                    SignUpView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack {
                        Text("Not registered yet?")
                        Text("Create Account.")
                            .bold()
                    }.foregroundColor(.black)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SignInView()
}
