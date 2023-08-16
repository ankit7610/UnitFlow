//
//  AboutApp.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 12/08/23.
//

import SwiftUI

struct AboutApp: View {
    var body: some View {
            ZStack{
                LinearGradient(colors:[.orange.opacity(0.3),.white,.green.opacity(0.4)], startPoint:.top, endPoint:.bottom)
                    .ignoresSafeArea()
                VStack(alignment:.leading,spacing:10){
                    Text("About")
                        .font(.largeTitle)
                        .bold()
                    Text("1.) Welcome to the Unit Converter App, your go-to tool for hassle-free unit conversions on the go! This versatile app is designed to simplify your daily life by providing accurate and efficient conversion solutions for a wide range of units and measurements.")
                    Text("2.) Our app boasts an intuitive and easy-to-navigate interface, making unit conversions a breeze for users of all backgrounds.")
                    Text("3.) With an extensive collection of units covering various categories such as length, weight, volume, temperature, and more, you'll find everything you need in one place.")
                    Text("4.) Enjoy a seamless experience without distracting advertisements, allowing you to focus solely on your conversions.")
                    Text("No internet connection? No problem! Our app offers offline functionality, so you can perform conversions anytime, anywhere.")
                    Text("5.) The Unit Converter App is developed and maintained by Ankit Kaushik, a passionate individual dedicated to creating user-friendly and practical solutions. With a commitment to accuracy and functionality, I aim to provide you with a tool that enhances your efficiency and convenience.")
                }
                .offset(y:-70)
                .padding()
            }
        }
}

struct AboutApp_Previews: PreviewProvider {
    static var previews: some View {
        AboutApp()
    }
}
