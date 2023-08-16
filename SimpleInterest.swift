//
//  SimpleInterest.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 13/08/23.
//

import SwiftUI

struct SimpleInterest: View {
    @Environment(\.presentationMode) var presentationMode
    @State var rate=1.0
    @State var Amount=100000.0
    @State var years=1.0
    @State var showsheet=false
    var body: some View {
            ZStack{
                Color.gray.opacity(0.3)
                    .ignoresSafeArea()
                VStack{
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack(spacing:0){
                            Image(systemName:"chevron.left")
                                .font(.title)
                            Text("Tools")
                        }
                        .foregroundColor(.blue)
                    }
                    .offset(x:-130)
                    Text("Simple Interest Calculator")
                        .font(.system(size:30))
                        .bold()
                        .padding()
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.pink)
                        .frame(width:350,height:50)
                        .overlay {
                            HStack(spacing:120){
                                Text("Amount")
                                Text("₹\(Amount.formatted())")
                            }
                            .bold()
                            .font(.system(size:20))
                            .foregroundColor(.white)
                        }
                    Slider(value:$Amount,in:10000...10000000,step:10000.0)
                        .padding(30)
                        .accentColor(.green)
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.pink)
                        .frame(width:350,height:50)
                        .overlay {
                            HStack(spacing:120){
                                Text("Rate of Interest(p.a)")
                                Text("\(rate.formatted())%")
                            }
                            .bold()
                            .font(.system(size:18))
                            .foregroundColor(.white)
                        }
                    Slider(value:$rate,in:1...50,step:0.1)
                        .padding(30)
                        .accentColor(.green)
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.pink)
                        .frame(width:350,height:50)
                        .overlay {
                            HStack(spacing:120){
                                Text("Time Period")
                                Text("\(years.formatted()) Yr")
                            }
                            .bold()
                            .font(.system(size:20))
                            .foregroundColor(.white)
                        }
                    Slider(value:$years,in:1...30,step:1.0)
                        .padding(30)
                        .accentColor(.green)
                    Button {
                        showsheet.toggle()
                    } label: {
                        Text("Calculate")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding()
                    }
                }
                .sheet(isPresented:$showsheet) {
                    VStack(spacing:-30){
                        Text("Total Interest: ₹\(((Amount*rate*years)/100).rounded().formatted())")
                            .padding()
                            .bold()
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                        Text("Total Amount: ₹\((Amount+(Amount*rate*years)/100).rounded().formatted())")
                            .padding()
                            .bold()
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                        Text("Principle Amount: ₹\(Amount.rounded().formatted())")
                            .padding()
                            .bold()
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                        Spacer()
                        Button {
                            showsheet.toggle()
                        } label: {
                            Text("OK")
                                .bold()
                                .frame(width:70,height: 30)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(20)
                                .padding(30)
                        }
                        
                    }
                    .presentationDetents([.height(250)])
                }
        }
        }
}

struct SimpleInterest_Previews: PreviewProvider {
    static var previews: some View {
        SimpleInterest()
    }
}
