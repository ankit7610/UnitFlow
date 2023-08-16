//
//  SipCal.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 14/08/23.
//

import SwiftUI

struct SipCal: View {
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
                    Text("SIP Calculator")
                        .font(.system(size:30))
                        .bold()
                        .padding()
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.pink)
                        .frame(width:350,height:50)
                        .overlay {
                            HStack(spacing:120){
                                Text("Monthly Amount")
                                Text("₹\(Amount.formatted())")
                            }
                            .bold()
                            .font(.system(size:18))
                            .foregroundColor(.white)
                        }
                    Slider(value:$Amount,in:1000...500000,step:1000.0)
                        .padding(30)
                        .accentColor(.green)
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.pink)
                        .frame(width:350,height:50)
                        .overlay {
                            HStack(spacing:120){
                                Text("Return Rate(p.a)")
                                Text("\(rate.formatted())%")
                            }
                            .bold()
                            .font(.system(size:20))
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
                                Text("SIP Period")
                                Text("\(years.formatted()) Yr")
                            }
                            .bold()
                            .font(.system(size:20))
                            .foregroundColor(.white)
                        }
                    Slider(value:$years,in:1...40,step:1.0)
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
                        let i=rate/(100*12)
                        let d=pow(1+i,12*years)-1
                        let b=Amount*d*(1+i)/i
                        let c=Amount*years*12
                        Text("Estimated Returns: ₹\((b-c).rounded().formatted())")
                            .padding()
                            .bold()
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                        Text("Total Value: ₹\(b.rounded().formatted())")
                            .padding()
                            .bold()
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                        Text("Invested Amount: ₹\((c).rounded().formatted())")
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

struct SipCal_Previews: PreviewProvider {
    static var previews: some View {
        SipCal()
    }
}
