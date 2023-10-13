//
//  KeyView.swift
//  Calculator
//
//  Created by Manikanta Sirumalla on 02/11/22.
//

import SwiftUI

struct KeyView: View {
    
    @State var value = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operations = .none
    @State private var ChangeColor = false
    
    let buttons:[[keys]] = [
        
        [.clear, .negative, .percent,.divide],
        [.seven, .eight, .nine, .multiply],
        [.four,.five,.six,.subtract],
        [.one,.two,.three,.add],
        [.zero,.decimal,.equal]
        
    ]
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(ChangeColor ? Color("numKeys").opacity(0.2): Color.pink.opacity(0.2))
                    .scaleEffect(ChangeColor ? 1.5 : 1.0)
                    .frame(width: 350, height: 280)
                    .animation(Animation.easeInOut.speed(0.17).repeatForever(), value: ChangeColor)
                    .onAppear(perform: {
                        
                        self.ChangeColor.toggle()
                    })
                    .overlay(Text(value)
                        .bold()
                        .font(.system(size: 100))
                        .foregroundColor(.black)
                             
                    )
            }.padding()
            
            ForEach(buttons, id: \.self) { row in
                HStack(spacing: 10) {
                    
                    ForEach(row, id:\.self){ element in
                        Button {
                            self.didTap(Buttons: element)
                        } label: {
                            Text(element.rawValue)
                                .font(.system(size: 35))
                                .frame(width: self.getWidth(elem: element), height: getHeight(elem: element))
                                .background(element.buttonColor)
                                .foregroundColor(.black)
                                .cornerRadius(self.getWidth(elem: element) / 2)
                                .shadow(color: .purple.opacity(0.8), radius: 30)
                        }
                        
                        
                    }
                    
                }.padding(.bottom,4)
                
            }
            
            
        }
        
        
    }
    
    
    func getHeight(elem: keys) -> CGFloat {
        return (UIScreen.main.bounds.width - (5*10)) / 5
        
    }
    
    func getWidth(elem: keys) -> CGFloat {
        if elem == .zero {
            return (UIScreen.main.bounds.width - (5*10)) / 2
        }
        return (UIScreen.main.bounds.width - (5*10)) / 4
    }
    
    func didTap(Buttons: keys) {
        switch Buttons {
            
        case .add, .subtract, .multiply, .divide, .equal:
            if Buttons == .add {
                self.currentOperation = .add
                self.runningNumber = Int(self.value) ?? 0
            }
            else  if Buttons == .subtract {
                self.currentOperation = .subtract
                self.runningNumber = Int(self.value) ?? 0
            }
            else if Buttons == .multiply {
                self.currentOperation = .multiply
                self.runningNumber = Int(self.value) ?? 0
            }
            else if Buttons == .divide {
                self.currentOperation = .divide
                self.runningNumber = Int(self.value) ?? 0
            }
            else  if Buttons == .equal {
                let runningValue = self.runningNumber
                let currentValue = Int(self.value) ?? 0
                
                switch self.currentOperation {
                case .add:
                    self.value = "\(runningValue + currentValue)"
                case .subtract:
                    self.value = "\(runningValue - currentValue)"
                case .multiply:
                    self.value = "\(runningValue * currentValue)"
                case .divide:
                    self.value = "\(runningValue / currentValue)"
                case .none :
                    break
                    
                }
            }
            if Buttons != .equal {
                self.value = "0"
            }
        case .clear : self.value = "0"
        case .decimal, .negative, .percent:
            break
        default:
            let number = Buttons.rawValue
            if value == "0" {
                value = number
            }
            else {
                self.value = "\(self.value)\(number)"
            }
            
        }
    }
}
 

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView()
    }
}
