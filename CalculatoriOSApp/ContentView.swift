//
//  ContentView.swift
//  CalculatoriOSApp
//
//  Created by Hoang Thanh on 06/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tf1:String = "0";
    @State private var tf2:String = "0";
    @State private var tfr:String = "0";
    
    var body: some View {
        TextField("First Number", text: $tf1)
            .padding()
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)
            .border(.orange).onTapGesture {
                tf1 = "";
            };
        TextField("Second Number", text: $tf2)
            .padding()
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)
            .border(.orange).onTapGesture {
                tf2 = "";
            };
        Button("Add", action: {
            let num1:Float? = Float(tf1);
            let num2:Float? = Float(tf2);
            let result:Float = Float(num1!) + Float(num2!);
            tfr = String(result);
        }).padding()
            .font(.largeTitle)
            .multilineTextAlignment(.center).buttonStyle(.borderedProminent);
        Text(tfr).padding()
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .foregroundColor(.green);
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().padding()
    }
}
