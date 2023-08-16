//
//  Colorchange.swift
//  UNIT CONVERTER
//
//  Created by Ankit Kaushik on 11/08/23.
//

import SwiftUI

struct Colorchange: View {
    @Binding var Back:Color
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Text("Hey! Pick the color of your choice from Below")
                    ColorPicker("Pick the Color", selection:$Back)
                    Button {
                        Back=Color.blue.opacity(0.1)
                    } label: {
                        Text("Default Color")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(30)
                    }

                }
            }
            .navigationTitle("Change Color")
        }
    }
}

struct Colorchange_Previews: PreviewProvider {
    static var previews: some View {
        Colorchange(Back:.constant(.blue))
    }
}
