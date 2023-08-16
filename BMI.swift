//
//  BMI.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 12/08/23.
//

import SwiftUI

struct BMI: View {
    @State var weight=0.0
    @State var height=0.0
    @State var ans=0.0
    @State var title=""
    func BMICAL()->Double{
        let k=height/100
        let g=k*k
        let t=weight/g
        return t
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
                Text("BMI Calculator")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text("Enter your Weight in KG's")
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
                Text("Enter your Height in CM's")
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
                Text("Caclulated BMI")
                    .padding()
                RoundedRectangle(cornerRadius:20)
                    .fill(Color.pink)
                    .frame(width:360,height:60)
                    .overlay(alignment:.leading){
                        HStack{
                            Text("\(ans.formatted())")
                            Spacer()
                            if(ans==0){
                                
                            }
                            else{
                                Text(title)
                            }
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

struct BMI_Previews: PreviewProvider {
    static var previews: some View {
        BMI()
    }
}
