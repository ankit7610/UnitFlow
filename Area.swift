//
//  Area.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 16/08/23.
//

import SwiftUI

struct Area: View {
    @State var units=["Square Kilometer","Square meter","Square inch","Hectare","Acre"]
    @State var first="Hectare"
    @State var second="Acre"
    @State var ans=0.0
    @State var result=0.0
    @State var sheet=false
    func calculate(){
        if(first=="Square Kilometer"&&second=="Square meter"){
            result=ans*1000000
        }
        else if(first=="Square Kilometer"&&second=="Square inch"){
            result=ans*1.55*1000000000
        }
        else if(first=="Square Kilometer"&&second=="Hectare"){
            result=ans*100
        }
        else if(first=="Square Kilometer"&&second=="Acre"){
            result=ans*247.1
        }
        else if(first=="Square meter"&&second=="Square Kilometer"){
            result=ans/1000000
        }
        else if(first=="Square meter"&&second=="Square inch"){
            result=ans*1550
        }
        else if(first=="Square meter"&&second=="Hectare"){
            result=ans/10000
        }
        else if(first=="Square meter"&&second=="Acre"){
            result=ans/4047
        }
        else if(first=="Square inch"&&second=="Square meter"){
            result=ans/1550
        }
        else if(first=="Square inch"&&second=="Square Kilometer"){
            result=ans/(1.55*1000000000)
        }
        else if(first=="Square inch"&&second=="Hectare"){
            result=ans/(1.55*10000000)
        }
        else if(first=="Square inch"&&second=="Acre"){
            result=ans/(6.273*1000000)
        }
        else if(first=="Hectare"&&second=="Square meter"){
            result=ans*10000
        }
        else if(first=="Hectare"&&second=="Square inch"){
            result=ans*1.55*10000000
        }
        else if(first=="Hectare"&&second=="Square Kilometer"){
            result=ans/100
        }
        else if(first=="Hectare"&&second=="Acre"){
            result=ans*2.471
        }
        else if(first=="Acre"&&second=="Square meter"){
            result=ans*4046.86
        }
        else if(first=="Acre"&&second=="Square inch"){
            result=ans*6.273*1000000
        }
        else if(first=="Acre"&&second=="Hectare"){
            result=ans/2.471
        }
        else if(first=="Acre"&&second=="Square Kilometer"){
            result=ans/247.1
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
                .navigationTitle("Area🏠🏠")
            }
        }
    }
}

struct Area_Previews: PreviewProvider {
    static var previews: some View {
        Area()
    }
}
