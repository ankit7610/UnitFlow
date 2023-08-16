//
//  HomeLoan.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 13/08/23.
//

import SwiftUI

struct HomeLoan: View {
    @Environment(\.presentationMode) var presentationMode
    @State var rate=1.0
    @State var Amount=100000.0
    @State var years=1.0
    @State var showresult=false
    @State var emi=8379.0
    @State var interest=542.0
    @State var totalamount=100542.0
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
                    Text("Home Loan Calculator")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.pink)
                        .frame(width:350,height:50)
                        .overlay {
                            HStack(spacing:120){
                                Text("Loan Amount")
                                Text("₹\(Amount.formatted())")
                            }
                            .bold()
                            .font(.system(size:17))
                            .foregroundColor(.white)
                        }
                    Slider(value:$Amount,in:100000...100000000,step:100000.0)
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
                    Slider(value:$rate,in:1...30,step:0.1)
                        .padding(30)
                        .accentColor(.green)
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.pink)
                        .frame(width:350,height:50)
                        .overlay {
                            HStack(spacing:120){
                                Text("Loan Tenure")
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
                let a=rate/(100*12)
                let b=pow(a+1,12*years)
                let ans=12*years
                    VStack(spacing:-30){
                        Text("Monthly EMI: ₹\((((Amount*a)*b)/(b-1)).rounded().formatted())")
                            .padding()
                            .bold()
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                        Text("Total Interest: ₹\(((ans*((Amount*a)*b)/(b-1)-Amount)).rounded().formatted())")
                            .padding()
                            .bold()
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                        Text("Total Amount: ₹\((ans*((Amount*a)*b)/(b-1)).rounded().formatted())")
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
                    .presentationDetents([.height(300)])
                }
        }
        }
}

struct HomeLoan_Previews: PreviewProvider {
    static var previews: some View {
        HomeLoan()
    }
}
