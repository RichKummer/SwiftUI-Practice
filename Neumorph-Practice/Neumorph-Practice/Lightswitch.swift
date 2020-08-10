//
//  Lightswitch.swift
//  Neumorph-Practice
//
//  Created by RichK on 8/5/20.
//

import SwiftUI

struct Lightswitch: View {
    @State var Switch = false
    @State var viewState = CGSize.zero
    @State var isDragging = false
    
    var body: some View {
        HStack {
            LightButton(Switch: $Switch, viewState: $viewState, isDragging: $isDragging)
                
            Spacer()
                .frame(width: isDragging ? 0 : 10)
            PlusButton(isDragging: $isDragging)
        }
        .padding(.horizontal, 15)
    }
}

struct Lightswitch_Previews: PreviewProvider {
    static var previews: some View {
        Lightswitch()
    }
}

//MARK: LightButton
struct LightButton: View {
    
    @Binding var Switch: Bool
    @Binding var viewState: CGSize
    @Binding var isDragging: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Light")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Text("Connected")
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.7857988944, green: 0.8164139397, blue: 0.9598672945, alpha: 1)))
                    .padding(.top, 5)
            }
            .padding(.leading, 20)
            Spacer()
            VStack {
                VStack {
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 60, height: 38)
                        .foregroundColor(Switch ? Color(#colorLiteral(red: 0.4215929548, green: 0.4680481758, blue: 0.7006902825, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(Switch ? 0 : 0.15), radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(Switch ? 0 : 1), radius: 3, x: -5, y: -5)
                }
                .frame(width: 76, height: 50)
                .background(Switch ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(Switch ? 0 : 1) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(18)
                .padding(.horizontal, 4)
                .padding(.top, 10)
                .offset(y: Switch ? 50 : 0)
                .onTapGesture {
                    withAnimation(.spring()) {
                        Switch.toggle()
                    }
                }
                
                Spacer()
                
                Text(Switch ? "Off" : "On")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.7857988944, green: 0.8164139397, blue: 0.9598672945, alpha: 1)))
                    .padding(.bottom, 20)
                    .offset(y: Switch ? -50 : 0)
                    .animation(.spring())
            }
            .frame(height: 120)
            .background(Switch ? Color(#colorLiteral(red: 0.1353112999, green: 0.2217664245, blue: 0.6547231916, alpha: 1)).opacity(0.8)  : Color(#colorLiteral(red: 0.1756659481, green: 0.2916717629, blue: 0.8352418664, alpha: 1)))
            .cornerRadius(20)
            .padding(.trailing, 10)
        }
        .frame(width: isDragging ? 250 : 230, height: 135)
        .background(Color(#colorLiteral(red: 0.3163430578, green: 0.4367289846, blue: 1, alpha: 1)))
        .cornerRadius(30)
        .animation(.spring())
        
        .offset(x: viewState.width, y: viewState.height)
        
        .gesture(
            DragGesture()
                .onChanged { value in
                    self.viewState = value.translation
                    if self.viewState.width > 10 {
                        self.isDragging = true
                }
            }
            .onEnded { value in
                if self.viewState.width < 10 {
                    self.isDragging = false
                }
                
                self.viewState = .zero
            }
        )
    }
}

//MARK: PlusButton
struct PlusButton: View {
    @Binding var isDragging: Bool
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [8]
                    )
                )
                .frame(width: 135, height: 135)
                .foregroundColor(Color(#colorLiteral(red: 0.8679608185, green: 0.8679608185, blue: 0.8679608185, alpha: 1)))
            
            Image(systemName: "plus")
                .font(.system(size: 30))
                .foregroundColor(Color(#colorLiteral(red: 0.8321105647, green: 0.8321105647, blue: 0.8321105647, alpha: 1)))
        }
        .offset(x: isDragging ? 200 : 0)
        .animation(.spring())
    }
}
