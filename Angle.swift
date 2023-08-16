//
//  Angle.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 16/08/23.
//

import SwiftUI

struct Angle: View {
    @State var units=["Degree","Radian","Gradian"]
    @State var first="Degree"
    @State var second="Radian"
    @State var ans=0.0
    @State var result=0.0
    @State var sheet=false
    func calculate(){
        if(first=="Degree"&&second=="Radian"){
            result=ans/0.01745
        }
        else if(first=="Degree"&&second=="Gradian"){
            result=ans*1.111
        }
        else if(first=="Radian"&&second=="Degree"){
            result=ans*57.296
        }
        else if(first=="Radian"&&second=="Gradian"){
            result=ans*63.662
        }
        else if(first=="Gradian"&&second=="Degree"){
            result=ans*0.9
        }
        else if(second=="Gradian"&&first=="Radian"){
            result=ans*0.01571
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
                .navigationTitle("Angle 📐📐")
            }
        }
    }
}

struct Angle_Previews: PreviewProvider {
    static var previews: some View {
        Angle()
    }
}
