//
//  ContentView.swift
//  Calculator
//
//  Created by Emily King on 5/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var display = 0
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var tempNumber = 0
    @State private var plus = false
    @State private var minus = false
    @State private var divide = false
    @State private var multiply = false
    
    
    
    var body: some View {
        
        
        VStack {
            
            Text(String(display))
            HStack {
                Button("1") {appendNumber(num: 1)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("2") {appendNumber(num: 2)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("3") {appendNumber(num: 3)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button(action: {
                    firstNumber = tempNumber
                    tempNumber = 0
                    plus = true
                }, label: {
                    Image(systemName: "plus.circle")
                })
            }
            HStack {
                Button("4") {appendNumber(num: 4)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("5") {appendNumber(num: 5)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("6") {appendNumber(num: 6)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button(action: {
                    firstNumber = tempNumber
                    tempNumber = 0
                    minus = true
                }, label: {
                    Image(systemName: "minus.circle")
                })
            }
            HStack {
                Button("7") {appendNumber(num: 7)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("8") {appendNumber(num: 8)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("9") {appendNumber(num: 9)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button(action: {
                    firstNumber = tempNumber
                    tempNumber = 0
                    multiply = true
                }, label: {
                    Image(systemName: "multiply.circle")
                })
            }
            HStack{
                Button("0") {appendNumber(num: 0)}
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button(action: {
                        firstNumber = tempNumber
                        tempNumber = 0
                    divide = true
                }, label: {
                    Image(systemName: "divide.circle")
                })                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            
            HStack{
            
            Button("Clear") {
                display = 0
                firstNumber = 0
                secondNumber = 0
                tempNumber = 0
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            Button("Equals") {
                if(plus){
                    tempNumber = firstNumber + tempNumber
                }
                if(minus) {
                    tempNumber = firstNumber - tempNumber
                }
                if(divide){
                    tempNumber = firstNumber / tempNumber
                }
                if(multiply){
                    tempNumber = firstNumber * tempNumber
                }
                display = tempNumber
                plus = false
                minus = false
                multiply = false
                divide = false
            }
            }
        }
    }
    func appendNumber(num: Int) {
        let str = String(tempNumber) + String(num)
        tempNumber = Int(str) ?? tempNumber
        display = tempNumber
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
