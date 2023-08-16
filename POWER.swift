//
//  POWER.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 16/08/23.
//

import SwiftUI

struct POWER: View {
    @State var units=["watt","Kilowatt","Megawatt"]
    @State var first="watt"
    @State var second="Kilowatt"
    @State var ans=0.0
    @State var result=0.0
    @State var sheet=false
    func calculate(){
        if(first=="watt"&&second=="Kilowatt"){
            result=ans/1000
        }
        else if(first=="watt"&&second=="Megawatt"){
            result=ans/1000000
        }
        else if(first=="Kilowatt"&&second=="watt"){
            result=ans*1000
        }
        else if(first=="Kilowatt"&&second=="Megawatt"){
            result=ans/1000
        }
        else if(first=="Megawatt"&&second=="watt"){
            result=ans/1000000
        }
        else if(second=="Megawatt"&&first=="Kilowatt"){
            result=ans/1000
        }
        else{
            result=ans
        }
    }
    var body: some View {
        NavigationStack{
            ZStack{
                    Color.blue.opacity(0.15)
                        .ignoresSafeArea()
                VStack(spacing:40){
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.white)
                        .frame(width:350,height:60)
                        .overlay{
                            HStack{
                                Text("First Unit")
                                    .foregroundColor(.black)
                                    .font(.system(size:18))
                                    .shadow(radius:30)
                                    .bold()
                                    .padding()
                                Spacer()
                                Picker("Choose first",selection:$first) {
                                    ForEach(units,id:\.self) { value in
                                        Text(value)
                                    }
                                }
                            }
                        }
                        .shadow(radius:30)
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.white)
                        .frame(width:350,height:60)
                        .overlay{
                            HStack{
                                Text("Second Unit")
                                    .foregroundColor(.black)
                                    .font(.system(size:18))
                                    .shadow(radius:30)
                                    .bold()
                                    .padding()
                                Spacer()
                                Picker("Choose first",selection:$second) {
                                    ForEach(units,id:\.self) { value in
                                        Text(value)
                                    }
                                }
                            }
                        }
                        .shadow(radius:30)
                    RoundedRectangle(cornerRadius:20)
                        .fill(Color.white)
                        .frame(width:350,height:300)
                        .overlay{
                            VStack(alignment:.leading,spacing:-10){
                                Text("Enter the Value:")
                                    .bold()
                                    .font(.system(size:18))
                                    .padding()
                                    .foregroundColor(.black)
                                TextField("Enter the Value",value:$ans,format:.number)
                                    .font(.system(size:18))
                                    .padding()
                                    .background(Color.pink)
                                    .keyboardType(.decimalPad)
                                    .cornerRadius(20)
                                    .padding(15)
                                    .foregroundColor(.white)
                                    .bold()
                                    .shadow(radius:20)
                                Button {
                                    calculate()
                                } label: {
                                    Text("Calculate")
                                        .bold()
                                        .padding()
                                        .font(.system(size:18))
                                        .foregroundColor(.white)
                                        .background(Color.blue)
                                        .cornerRadius(20)
                                        .padding()
                                }
                                Text("Result: \(result.formatted())")
                                    .bold()
                                    .padding()
                                    .font(.system(size:18))
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .cornerRadius(20)
                                    .padding()
                            }
                        }
                }
                .offset(y:-30)
                .navigationTitle("Power ⚡️⚡️")
            }
        }
    }
}

struct POWER_Previews: PreviewProvider {
    static var previews: some View {
        POWER()
    }
}
