//
//  Tools.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 07/08/23.
//

import SwiftUI

struct Tools: View {
    @State var showcarsheet=false
    @State var showhomesheet=false
    @State var showSIsheet=false
    @State var showCIsheet=false
    @State var showSIPsheet=false
    @State var showFDsheet=false
        var body: some View {
            NavigationView{
                ZStack{
                    VStack{
                        Color.white
                            .ignoresSafeArea()
                    }
                    RoundedRectangle(cornerRadius:20)
                        .frame(width:60,height:10)
                        .offset(y:-350)
                        .font(.title)
                        .foregroundColor(.gray)
                        .bold()
                        .shadow(radius:2)
                    Text("Tools")
                        .font(.largeTitle)
                        .bold()
                        .offset(x:-130,y:-290)
                    VStack{
                        Button{
                            showcarsheet.toggle()
                        } label: {
                            RoundedRectangle(cornerRadius:20)
                                .fill(Color.purple.opacity(0.2))
                                .frame(width:355,height:80)
                                .overlay {
                                    Text("Car Loan")
                                        .foregroundColor(.black)
                                        .font(.title)
                                        .shadow(radius:010)
                                }
                        }
                        Button {
                            showhomesheet.toggle()
                        } label: {
                            RoundedRectangle(cornerRadius:20)
                                .fill(Color.purple.opacity(0.2))
                                .frame(width:355,height:80)
                                .overlay {
                                    Text("Home Loan")
                                        .foregroundColor(.black)
                                        .font(.title)
                                        .shadow(radius:010)
                                }
                        }
                        Button {
                            showSIPsheet.toggle()
                        } label: {
                            RoundedRectangle(cornerRadius:20)
                                .fill(Color.purple.opacity(0.2))
                                .frame(width:355,height:80)
                                .overlay {
                                    Text("SIP")
                                        .foregroundColor(.black)
                                        .font(.title)
                                        .shadow(radius:010)
                                }
                        }
                        Button {
                            showSIsheet.toggle()
                        } label: {
                            RoundedRectangle(cornerRadius:20)
                                .fill(Color.purple.opacity(0.2))
                                .frame(width:355,height:80)
                                .overlay {
                                    Text("Simple Interest")
                                        .foregroundColor(.black)
                                        .font(.title)
                                        .shadow(radius:010)
                                }
                        }
                        Button {
                            showCIsheet.toggle()
                        } label: {
                            RoundedRectangle(cornerRadius:20)
                                .fill(Color.purple.opacity(0.2))
                                .frame(width:355,height:80)
                                .overlay {
                                    Text("Compound Interest")
                                        .foregroundColor(.black)
                                        .font(.title)
                                        .shadow(radius:010)
                                }
                        }
                        Button {
                            showFDsheet.toggle()
                        } label: {
                            RoundedRectangle(cornerRadius:20)
                                .fill(Color.purple.opacity(0.2))
                                .frame(width:355,height:80)
                                .overlay {
                                    Text("Fixed Deposit")
                                        .font(.title)
                                        .foregroundColor(.black)
                                        .shadow(radius:010)
                                }
                        }
                    }
                    .offset(y:5)
                }
            }
            .fullScreenCover(isPresented:$showcarsheet) {
                CARLOAN()
            }
            .fullScreenCover(isPresented:$showhomesheet) {
                HomeLoan()
            }
            .fullScreenCover(isPresented:$showSIsheet) {
                SimpleInterest()
            }
            .fullScreenCover(isPresented:$showCIsheet) {
                CompoundInterest()
            }
            .fullScreenCover(isPresented:$showSIPsheet) {
                SipCal()
            }
            .fullScreenCover(isPresented:$showFDsheet) {
                FixedDepo()
            }
        }
}

struct Tools_Previews: PreviewProvider {
    static var previews: some View {
        Tools()
    }
}
