//
//  ContentView.swift
//  Shapes
//
//  Created by Jack on 2026/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            
            // 地藏的袖子-左
            Rectangle()
                .trim(from: 0.5, to: 1)
                .fill(Color(red: 0.8, green: 0.8, blue: 0.8))
                .stroke(.black)
                .frame(width: 30, height: 30)
                .rotationEffect(.degrees(50))
                .offset(x: 23, y: 25)
                            
            // 地藏身體
            Rectangle()
                .fill(Color(red: 0.8, green: 0.8, blue: 0.8))
                .stroke(.black)
                .frame(width: 15, height: 55)
                .offset(x: 25, y: 40)
            
            // 地藏的袖子-右
            Ellipse()
                .fill(Color(red: 0.8, green: 0.8, blue: 0.8))
                .stroke(.black)
                .frame(width: 5, height: 30)
                .scaleEffect(x: -1)
                .offset(x: 32, y: 24)
            
            // 地藏領巾
            Circle()
                .fill(.red)
                .stroke(.black)
                .frame(width: 12)
                .offset(x: 24, y: 13)
            
            // 地藏的頭
            Ellipse()
                .fill(Color(red: 0.8, green: 0.8, blue: 0.8))
                .stroke(.black)
                .frame(width: 30, height: 25)
                .offset(x: 25, y: 0)
            
            // 地藏五官
            // 1. 眼睛
            Path { p in
                p.move(to: CGPoint(x: 0, y: 0))
                p.addLine(to: CGPoint(x: -7, y: 1))
            }
            .stroke(.black, lineWidth: 1.5)
            .offset(x: 252, y: 315)
            
            Path { p in
                p.move(to: CGPoint(x: 0, y: 0))
                p.addLine(to: CGPoint(x: -8, y: 1.5))
            }
            .stroke(.black, lineWidth: 1.5)
            .offset(x: 265, y: 313)
            
            // 2. 嘴巴
            Path { p in
                p.move(to: CGPoint(x: 0, y: 0))
                p.addQuadCurve(to: CGPoint(x: -6, y: 1.5),
                               control: CGPoint(x: -1, y: 0))
            }
            .stroke(.black, lineWidth: 1.5)
            .offset(x: 259, y: 323)
            // End of 地藏五官
            
            // 槍
            Path { p in
                p.move(to: CGPoint(x: 0, y: -5))
                p.addLine(to: CGPoint(x: -35, y: 5))
                p.addLine(to: CGPoint(x: -30, y: 30))
                p.addLine(to: CGPoint(x: -18, y: 25))
                p.addLine(to: CGPoint(x: -20, y: 15))
                p.addLine(to: CGPoint(x: -16, y: 14))
                p.addLine(to: CGPoint(x: -10, y: 40))
                p.addLine(to: CGPoint(x: -2, y: 37))
                p.addLine(to: CGPoint(x: -8, y: 12))
                p.addLine(to: CGPoint(x: -3, y: 10))
                p.addLine(to: CGPoint(x: 3, y: 20))
                p.addLine(to: CGPoint(x: 7, y: 18))
                p.addLine(to: CGPoint(x: 2, y: 8))
                p.addLine(to: CGPoint(x: 6, y: 6))
                p.addLine(to: CGPoint(x: 3, y: 0))
                p.closeSubpath()
            }
            .fill(Color(red: 0.3, green: 0.3, blue: 0.3))
            .stroke(.black)
            .offset(x: 233, y: 333)
            
            // 地藏的手-左
            Capsule()
                .fill(Color(red: 0.8, green: 0.8, blue: 0.8))
                .stroke(.black)
                .frame(width: 4, height: 10)
                .rotationEffect(.degrees(35))
                .offset(x: 3, y: 24)
            
            // 地藏的手-右
            Circle()
                .fill(Color(red: 0.8, green: 0.8, blue: 0.8))
                .stroke(.black)
                .frame(width: 6)
                .offset(x: 28, y: 21)

            // 籃子
            Path { p in
                p.move(to: CGPoint(x: 10, y: 10))
                p.addArc(center: CGPoint(x: 10, y: 10), radius: 75, startAngle: .degrees(-12), endAngle: .degrees(100), clockwise: false)
                p.closeSubpath()
            }
            .fill(.strawHat)
            .stroke(.black)
            .offset(x: 225, y: 375)

            
            // 蓑衣
            Path { p in
                p.move(to: CGPoint(x: 15, y: -30))
                p.addLine(to: CGPoint(x: -10, y: -20))
                p.addLine(to: CGPoint(x: -15, y: 0))
                p.addLine(to: CGPoint(x: 0, y: -5))
                p.addLine(to: CGPoint(x: -6, y: 10))
                p.addLine(to: CGPoint(x: -3, y: 30))
                p.addLine(to: CGPoint(x: -5, y: 40))
                p.addLine(to: CGPoint(x: 0, y: 38))
                p.addLine(to: CGPoint(x: 5, y: 55))
                p.addLine(to: CGPoint(x: 15, y: 50))
                p.addLine(to: CGPoint(x: 30, y: 60))
                p.addLine(to: CGPoint(x: 50, y: 65))
                p.addLine(to: CGPoint(x: 60, y: 60))
                p.addLine(to: CGPoint(x: 70, y: 65))
                p.addLine(to: CGPoint(x: 80, y: 50))
                p.addLine(to: CGPoint(x: 85, y: 40))
                p.addLine(to: CGPoint(x: 87, y: 47))
                p.addLine(to: CGPoint(x: 95, y: 45))
                p.addLine(to: CGPoint(x: 92, y: 30))
                p.addLine(to: CGPoint(x: 87, y: -15))
                p.closeSubpath()
            }
            .fill(.strawCape)
            .stroke(.black)
            .offset(x: 192, y: 415)
            
            // 貓腳-左
            Path { p in
                p.move(to: CGPoint(x: -10, y: -5))
                p.addCurve(to: CGPoint(x: -5, y: 20),
                           control1: CGPoint(x: -20, y: 10),
                           control2: CGPoint(x: -5, y: 10))
                p.addQuadCurve(to: CGPoint(x: 0, y: 15),
                           control: CGPoint(x: 0, y: 25))
                p.addQuadCurve(to: CGPoint(x: 15, y: -10),
                           control: CGPoint(x: -10, y: 5))
                p.closeSubpath()
            }
            .fill(.white)
            .stroke(.black)
            .offset(x: 212, y: 463)
            
            // 貓身體
            Ellipse()
                .fill(.white)
                .stroke(.black)
                .frame(width: 90, height: 100)
                .offset(y: 100)
            
            // 領巾
            Path { p in
                p.move(to: CGPoint(x: -10, y: -5))
                p.addQuadCurve(to: CGPoint(x: -10, y: 15),
                               control: CGPoint(x: -15, y: 10))
                p.addQuadCurve(to: CGPoint(x: 15, y: 20),
                           control: CGPoint(x: 0, y: 25))
                p.addQuadCurve(to: CGPoint(x: -10, y: -5),
                           control: CGPoint(x: -10, y: 10))
                p.closeSubpath()
            }
            .fill(Color(red: 100/255, green: 100/255, blue: 180/255))
            .stroke(.black)
            .offset(x: 200, y: 410)
            Path { p in
                p.move(to: CGPoint(x: 0, y: 0))
                p.addQuadCurve(to: CGPoint(x: -20, y: 20),
                               control: CGPoint(x: -10, y: 15))
                p.addQuadCurve(to: CGPoint(x: 15, y: 0),
                           control: CGPoint(x: 0, y: 20))
                p.closeSubpath()
            }
            .fill(Color(red: 100/255, green: 100/255, blue: 180/255))
            .stroke(.black)
            .offset(x: 250, y: 410)
            
            // 領結-左
            Rectangle()
                .fill(Color(red: 100/255, green: 100/255, blue: 180/255))
                .stroke(.black)
                .frame(width: 12, height: 8)
                .rotationEffect(.degrees(25))
                .offset(x: -2, y: 116)

            // 領結-右
            Rectangle()
                .fill(Color(red: 80/255, green: 80/255, blue: 150/255))
                .stroke(.black)
                .frame(width: 8, height: 12)
                .rotationEffect(.degrees(30))
                .offset(x: -17, y: 117)
            
            // 領結-中間
            Rectangle()
                .fill(Color(red: 100/255, green: 100/255, blue: 180/255))
                .stroke(.black)
                .frame(width: 10, height: 10)
                .rotationEffect(.degrees(40))
                .offset(x: -10, y: 108)

            
            // 貓腳-右
            Path { p in
                p.move(to: CGPoint(x: -10, y: 0))
                p.addCurve(to: CGPoint(x: -5, y: 20),
                           control1: CGPoint(x: -20, y: 10),
                           control2: CGPoint(x: -5, y: 10))
                p.addQuadCurve(to: CGPoint(x: 0, y: 15),
                           control: CGPoint(x: 0, y: 25))
                p.addQuadCurve(to: CGPoint(x: 5, y: -2),
                           control: CGPoint(x: -10, y: 5))
            }
            .fill(.white)
            .stroke(.black)
            .offset(x: 250, y: 465)
            
            // 貓五官
            // 1. 眼睛
            Circle()
                .fill(.black)
                .frame(width: 6)
                .offset(x: -22, y: 69)
            Circle()
                .fill(.black)
                .frame(width: 6)
                .offset(x: 0, y: 67)
            
            // 2. 鼻子
            Path { p in
                p.move(to: CGPoint(x: -5, y: 0))
                p.addQuadCurve(to: CGPoint(x: 0, y: 5),
                               control: CGPoint(x: -3, y: 4))
                p.addQuadCurve(to: CGPoint(x: -12, y: 5),
                               control: CGPoint(x: -5, y: 15))
            }
            .stroke(.black, lineWidth: 2)
            .offset(x: 222, y: 395)

            Path { p in
                p.move(to: CGPoint(x: -5, y: 0))
                p.addQuadCurve(to: CGPoint(x: 0, y: 5),
                               control: CGPoint(x: -3, y: 4))
                p.addQuadCurve(to: CGPoint(x: -12, y: 5),
                               control: CGPoint(x: -5, y: 15))
            }
            .stroke(.black, lineWidth: 2)
            .offset(x: 244, y: 395)
            .scaleEffect(x: -1)
            
            // 3. 嘴巴
            Path { p in
                p.move(to: CGPoint(x: -5, y: 0))
                p.addQuadCurve(to: CGPoint(x: 5, y: 0),
                               control: CGPoint(x: 0, y: 20))
            }
            .stroke(.black, lineWidth: 2)
            .offset(x: 222, y: 405)
            // End of 貓五官
            
            // 貓耳朵-左
            Path { p in
                p.move(to: CGPoint(x: 0, y: 10))
                p.addLine(to: CGPoint(x: 10, y: 5))
                p.addLine(to: CGPoint(x: 1, y: 0))
                p.closeSubpath()
            }
            .fill(.white)
            .stroke(.black)
            .offset(x: 202, y: 366)
            
            // 斗笠
            Hat()
                .fill(.strawHat)
                .stroke(.brown, lineWidth: 2)
                .frame(width: 80, height: 15)
                .offset(x: -10, y: 50)
                .rotationEffect(.degrees(-5))
            
            // 貓耳朵-右
            Path { p in
                p.move(to: CGPoint(x: 0, y: 10))
                p.addLine(to: CGPoint(x: 10, y: 13))
                p.addLine(to: CGPoint(x: 9, y: 0))
                p.closeSubpath()
            }
            .fill(.white)
            .stroke(.black)
            .offset(x: 242, y: 362)
            
            // 籃子背帶
            Path { p in
                p.move(to: CGPoint(x: 0, y: 0))
                p.addQuadCurve(to: CGPoint(x: 10, y: 40),
                               control: CGPoint(x: -10, y: 10))
                p.addQuadCurve(to: CGPoint(x: 0, y: 0),
                           control: CGPoint(x: -20, y: 15))
                p.closeSubpath()
            }
            .fill(.strawHat)
            .stroke(.black)
            .offset(x: 265, y: 405)
            
            // 貓手
            Path { p in
                p.move(to: CGPoint(x: -5, y: 0))
                p.addQuadCurve(to: CGPoint(x: -15, y: 10),
                               control: CGPoint(x: -7.5, y: 10))
                p.addQuadCurve(to: CGPoint(x: -15, y: 15),
                               control: CGPoint(x: -20, y: 15))
                p.addQuadCurve(to: CGPoint(x: 5, y: 0),
                               control: CGPoint(x: 0, y: 15))

            }
            .fill(.white)
            .stroke(.black)
            .offset(x: 275, y: 410)
            
            // 肩膀乾草
            Path { p in
                p.move(to: CGPoint(x: 0, y: 0))
                p.addQuadCurve(to: CGPoint(x: 50, y: 15), control: CGPoint(x: 20, y: -35))
                p.addQuadCurve(to: CGPoint(x: 25, y: 12), control: CGPoint(x: 33, y: 20))
                p.addQuadCurve(to: CGPoint(x: 5, y: 0), control: CGPoint(x: -5, y: 35))
                p.closeSubpath()
            }
            .fill(.strawCape)
            .stroke(.black)
            .offset(x: 245, y: 396)
            
            // 火光
            Star()
                .fill(Color(red: 240/255, green: 240/255, blue: 200/255))
                .stroke(Color(red: 220/255, green: 200/255, blue: 60/255), lineWidth: 3)
                .frame(width: 60)
                .rotationEffect(.degrees(-5))
                .offset(x: -50, y: 30)
        }
    }
}

struct Hat: Shape {
    func path(in rect: CGRect) -> Path {
        var p = Path()
        p.move(to: CGPoint(x: rect.midX, y: rect.minY))   // 帽頂
        p.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        p.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        p.closeSubpath()
        return p
    }
}

struct Star: Shape {
    var points = 4
    func path(in rect: CGRect) -> Path {
        let c = CGPoint(x: rect.midX, y: rect.midY)
        let outer = rect.width / 2, inner = outer * 0.4
        var p = Path()
        for i in 0..<(points * 2) {
            let r = i.isMultiple(of: 2) ? outer : inner
            let a = Double(i) * .pi / Double(points)
            let pt = CGPoint(x: c.x + r * cos(a), y: c.y + r * sin(a))
            i == 0 ? p.move(to: pt) : p.addLine(to: pt)
        }
        p.closeSubpath()
        return p
    }
}

#Preview {
    ContentView()
}
