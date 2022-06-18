//
//  ContentView.swift
//  Grade Calculator
//
//  Created by Bavornthat Dangtang on 17/6/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var grade:String = "Your grade receive"
    @State var point:String = ""
    
    var body: some View {
        VStack {
            Text("Grade Calculator").font(.largeTitle)
                .foregroundColor(.orange)
                .frame(width: 300, height: 100)
            Text("A => 80 Points")
                .foregroundColor(.purple)
            Text("B => 70 Points")
                .foregroundColor(.blue)
            Text("C => 60 Points")
                .foregroundColor(.green)
            Text("D => 50 Points")
                .foregroundColor(.yellow)
            Text("F < 50 Points")
                .foregroundColor(.red)
            
            HStack {
                Text("Your point = ")
                TextField("fill your point", text: $point)
                    .keyboardType(.numberPad)
            }.padding().font(.title3)
            
            
            Text(grade)
                .padding()
                .font(.title2)
                .foregroundColor(.indigo)
            
            Button(action: {
                let resultP = Int(self.point)!
                if  resultP >= 80 {
                    self.grade = "A"
                } else if resultP >= 70 {
                    self.grade = "B"
                } else if resultP >= 60 {
                    self.grade = "C"
                } else if resultP >= 50 {
                    self.grade = "D"
                } else {
                    self.grade = "F"
                }
            }) {
                Text("calculate")
            }.padding().font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
