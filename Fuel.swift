//
//  Fuel.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 16/08/23.
//

import SwiftUI

struct Fuel: View {
    @State var weight=0.0
    @State var height=0.0
    @State var ans=0.0
    @State var title=""
    func BMICAL()->Double{
        return weight/height
    }
    func type()->String{
        var value=""
        if(ans<18.5){
            value="Underweight"
        }
        else if(ans>18.5&&ans<24.9){
            value="Normal"
        }
        else{
            value="Overweight"
        }
        return value
    }
    var body: some View {
        ZStack{
            Color.blue.opacity(0.2)
                .ignoresSafeArea()
            VStack(alignment:.leading,spacing:0){
                Text("Fuel Ecomony")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text("Enter the Kilometer Driven")
                    .padding()
                TextField("",value:$weight,format:.number)
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .font(.system(size:25))
                    .bold()
                    .keyboardType(.numberPad)
                    .cornerRadius(20)
                    .padding()
                Text("Enter the Fuel used in Liter")
                    .padding()
                TextField("",value:$height,format:.number)
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .font(.system(size:25))
                    .bold()
                    .keyboardType(.numberPad)
                    .cornerRadius(20)
                    .padding()
                Text("Mileage in Kilometer/Liter")
                    .padding()
                RoundedRectangle(cornerRadius:20)
                    .fill(Color.pink)
                    .frame(width:360,height:60)
                    .overlay(alignment:.leading){
                        HStack{
                            Text("\(ans.formatted())")
                            Spacer()
                        }
                                .padding()
                                .font(.system(size:25))
                                .foregroundColor(.white)
                                .bold()
                    }
                    .padding()
                    Button {
                        ans=BMICAL()
                        title=type()
                    } label: {
                        Text("Calculate")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding()
                    }
            }
            .offset(y:-40)
        }
    }
}

struct Fuel_Previews: PreviewProvider {
    static var previews: some View {
        Fuel()
    }
}
