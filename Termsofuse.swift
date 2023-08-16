//
//  Termsofuse.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 12/08/23.
//

import SwiftUI

struct Termsofuse: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack{
            ZStack{
                Color.purple.opacity(0.2)
                    .ignoresSafeArea()
                    .navigationBarItems(leading:
                                            HStack{
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName:"arrowshape.backward.fill")
                        }

                    })
                ScrollView{
                    VStack(alignment:.leading, spacing:20){
                        Text("Welcome to the Unit Converter , developed and provided by Ankit Kaushik. These Terms of Use outline the terms and conditions that govern your use of the App. By using the App, you agree to comply with these Terms. Please read them carefully before using the App.")
                        Text("1.) Acceptance of Terms")
                            .bold()
                            .font(.system(size: 25))
                        Text("By accessing or using the App, you acknowledge that you have read, understood, and agree to be bound by these Terms. If you do not agree with these Terms, please refrain from using the App.")
                        Text("2.) App Usage")
                            .bold()
                            .font(.system(size: 25))
                        Text("The App is intended for personal, non-commercial use only. You may not use the App for any commercial purpose without prior written consent from the Developer.\nWhile I strive to provide accurate and reliable unit conversion calculations, I do not guarantee the accuracy, reliability, or completeness of the results. You are responsible for verifying the converted values before making any decisions based on them.\nI aim to ensure the availability of the App, but I do not guarantee uninterrupted access. I reserve the right to modify, suspend, or discontinue the App at any time without prior notice.")
                        Text("3.) User Conduct")
                            .bold()
                            .font(.system(size: 25))
                        Text("You agree not to use the App for any unlawful, harmful, or fraudulent purposes. You also agree not to engage in any activity that may disrupt or interfere with the proper functioning of the App or its associated systems.\n The App and its content are protected by intellectual property laws. You may not copy, modify, distribute, sell, or create derivative works based on the App without my explicit permission.")
                        Text("4.) Privacy")
                            .bold()
                            .font(.system(size: 25))
                        Text("This App does not collect any user data.")
                        
                    }
                    .padding(25)
                    .navigationTitle("Terms of Use")
                }
                .offset(y:-20)
            }
        }
    }
}

struct Termsofuse_Previews: PreviewProvider {
    static var previews: some View {
        Termsofuse()
    }
}
