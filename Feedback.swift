//
//  Feedback.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 11/08/23.
//

import SwiftUI

struct Feedback: View {
    @State var name=""
    @Environment(\.presentationMode) var presentationMode
    @State var Email=""
    @State var nothing=false
    @State var invalid=false
    @State var note=""
    @State var ans=false
    func success(){
        if(invalid==false&&nothing==false){
            ans.toggle()
        }
    }
    var body: some View {
        NavigationView{
            ZStack{
                Image("bk")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    TextField("Enter your name", text:$name)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(40)
                        .padding()
                        .autocorrectionDisabled()
                     TextField("Enter your Email", text:$Email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(40)
                        .padding()
                        .autocorrectionDisabled()
                        TextField("Please Write Review!!", text:$note,axis:.vertical)
                            .padding(80)
                            .background(Color.white)
                            .cornerRadius(40)
                            .padding()
                            .autocorrectionDisabled()
                        Button {
                            if(name.count==0||Email.count==0||note.count==0){
                                nothing.toggle()
                            }
                            else if(!Email.contains("@gmail.com")){
                                invalid.toggle()
                            }
                            success()
                        } label: {
                            RoundedRectangle(cornerRadius:20)
                                .frame(width:200,height:50)
                                .overlay(
                                    Text("Send")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .bold()
                                )
                        }
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            VStack{
                                Image(systemName: "house")
                                    .font(.title)
                                Text("Home")
                            }
                        }.offset(y:30)
                }
                .alert("Invalid Input", isPresented:$nothing, actions: {
                    
                }, message: {
                    Text("Please fill all the fields!!".uppercased())
                })
                .alert("Invalid Email", isPresented:$invalid, actions: {
                    
                }, message: {
                    Text("Please Enter a valid Email!!".uppercased())
                })
                .alert("Successfully Sended 🎉🎊", isPresented:$ans, actions: {
                },message: {
                    Text("Thank you!!😊😊")
                })
                .offset(y:-60)
            }
            .navigationTitle("Feeback!!😊😊")
        }
    }
}

struct Feedback_Previews: PreviewProvider {
    static var previews: some View {
        Feedback()
    }
}
