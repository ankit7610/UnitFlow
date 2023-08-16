//
//  Length.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 15/08/23.
//

import SwiftUI

struct Length: View {
    @State var units=["Kilometer","Meter","Centimeters","Mile","Inch"]
    @State var first="Kilometer"
    @State var second="Meter"
    @State var ans=0.0
    @State var result=0.0
    func calculate(){
        if(first=="Kilometer"&&second=="Meter"){
            result=ans*1000
        }
        else if(first=="Kilometer"&&second=="Centimeters"){
            result=ans*100000
        }
        else if(first=="Kilometer"&&second=="Mile"){
            result=ans/1.609
        }
        else if(first=="Kilometer"&&second=="Inch"){
            result=ans*39370.1
        }
        else if(first=="Meter"&&second=="Kilometer"){
            result=ans/1000
        }
        else if(first=="Meter"&&second=="Centimeters"){
            result=ans*100
        }
        else if(first=="Meter"&&second=="Mile"){
            result=ans/1609
        }
        else if(first=="Meter"&&second=="Inch"){
            result=ans*39.37
        }
        else if(first=="Centimeters"&&second=="Kilometer"){
            result=ans/100000
        }
        else if(first=="Centimeters"&&second=="Meter"){
            result=ans/100
        }
        else if(first=="Centimeters"&&second=="Mile"){
            result=ans/160934
        }
        else if(first=="Centimeters"&&second=="Inch"){
            result=ans/2.54
        }
        else if(first=="Mile"&&second=="Kilometer"){
            result=ans*1.609
        }
        else if(first=="Mile"&&second=="Meter"){
            result=ans*1609.34
        }
        else if(first=="Mile"&&second=="Centimeters"){
            result=ans*160934
        }
        else if(first=="Mile"&&second=="Inch"){
            result=ans*63360
        }
        else if(first=="Inch"&&second=="Kilometer"){
            result=ans/39370
        }
        else if(first=="Inch"&&second=="Meter"){
            result=ans/39.37
        }
        else if(first=="Inch"&&second=="Centimeters"){
            result=ans*2.54
        }
        else if(first=="Inch"&&second=="Mile"){
            result=ans/63360
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
                .navigationTitle("Length📏📏")
                .offset(y:-30)
            }
        }
    }
}
struct Length_Previews: PreviewProvider {
    static var previews: some View {
        Length()
    }
}
