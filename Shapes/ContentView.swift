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
            ZStack {
                // 地藏的袖子-左
                Rectangle()
                    .trim(from: 0.5, to: 1)
                    .fill(.jizo)
                    .stroke(.black)
                    .frame(width: 30, height: 30)
                    .rotationEffect(.degrees(50))
                    .offset(x: 23, y: 25)
                
                // 地藏身體
                Rectangle()
                    .fill(.jizo)
                    .stroke(.black)
                    .frame(width: 15, height: 55)
                    .offset(x: 25, y: 40)
                
                // 地藏的袖子-右
                Ellipse()
                    .fill(.jizo)
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
                    .fill(.jizo)
                    .stroke(.black)
                    .frame(width: 30, height: 25)
                    .rotationEffect(.degrees(-10))
                    .offset(x: 25, y: -2)
                                    
                // 地藏五官
                // 1. 眼睛
                Path { p in
                    p.move(to: CGPoint(x: 0, y: 0))
                    p.addLine(to: CGPoint(x: -7, y: 1))
                }
                .stroke(.black, lineWidth: 1.5)
                .offset(x: 252, y: 317)
                
                Path { p in
                    p.move(to: CGPoint(x: 0, y: 0))
                    p.addLine(to: CGPoint(x: -8, y: 1.5))
                }
                .stroke(.black, lineWidth: 1.5)
                .offset(x: 265, y: 315)
                
                // 2. 嘴巴
                Path { p in
                    p.move(to: CGPoint(x: 0, y: 0))
                    p.addQuadCurve(to: CGPoint(x: -6, y: 1.5),
                                   control: CGPoint(x: -1, y: 0))
                }
                .stroke(.black, lineWidth: 1.5)
                .offset(x: 259, y: 325)
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
                    .fill(.jizo)
                    .stroke(.black)
                    .frame(width: 4, height: 10)
                    .rotationEffect(.degrees(35))
                    .offset(x: 3, y: 24)
                
                // 地藏的手-右
                Circle()
                    .fill(.jizo)
                    .stroke(.black)
                    .frame(width: 6)
                    .offset(x: 28, y: 21)
                
                // 籃子
                Path { p in
                    p.move(to: CGPoint(x: 0, y: 0))
                    p.addQuadCurve(to: CGPoint(x: 62, y: -12),
                                   control: CGPoint(x: 30, y: -2))
                    p.addLine(to: CGPoint(x: 64, y: -5))
                    p.addLine(to: CGPoint(x: 58, y: -2))
                    p.addCurve(to: CGPoint(x: 10, y: 80),
                               control1: CGPoint(x: 85, y: 20),
                               control2: CGPoint(x: 70, y: 75))
                    p.closeSubpath()
                }
                .fill(.strawHat)
                .stroke(.black)
                .offset(x: 235, y: 380)
                                
                // 蓑衣-左邊
                Path { p in
                    p.move(to: CGPoint(x: 0, y: 0))
                    p.addQuadCurve(to: CGPoint(x: -15, y: 5), control: CGPoint(x: -30, y: 5))
                    p.addQuadCurve(to: CGPoint(x: -15, y: 10), control: CGPoint(x: -30, y: 20))
                    p.addQuadCurve(to: CGPoint(x: -17, y: 20), control: CGPoint(x: -19, y: 20))
                    p.addQuadCurve(to: CGPoint(x: 0, y: 10), control: CGPoint(x: -10, y: 18))
                    p.closeSubpath()
                }
                .fill(.strawCape)
                .stroke(.black)
                .offset(x: 200, y: 390)
                
                // 蓑衣-下面+後面
                Path { p in
                    p.move(to: CGPoint(x: 0, y: 0))
                    p.addQuadCurve(to: CGPoint(x: 5, y: 15), control: CGPoint(x: -3, y: 25))
                    p.addQuadCurve(to: CGPoint(x: 20, y: 25), control: CGPoint(x: 5, y: 40))
                    p.addQuadCurve(to: CGPoint(x: 60, y: 31), control: CGPoint(x: 55, y: 50))
                    p.addLine(to: CGPoint(x: 72, y: 35))
                    p.addQuadCurve(to: CGPoint(x: 85, y: 10), control: CGPoint(x: 90, y: 25))
                    p.addQuadCurve(to: CGPoint(x: 90, y: -5), control: CGPoint(x: 105, y: 35))
                    p.addQuadCurve(to: CGPoint(x: 80, y: -40), control: CGPoint(x: 100, y: 10))

                    p.closeSubpath()
                }
                .fill(.strawCape)
                .stroke(.black)
                .offset(x: 192, y: 430)
                
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
                .offset(x: 222, y: 453)
                
                // 貓身體
                Ellipse()
                    .fill(.white)
                    .stroke(.black)
                    .frame(width: 85, height: 90)
                    .offset(y: 95)
                
                // 貓腳-右
                Path { p in
                    p.move(to: CGPoint(x: -10, y: 0))
                    p.addCurve(to: CGPoint(x: -5, y: 20),
                               control1: CGPoint(x: -20, y: 10),
                               control2: CGPoint(x: -5, y: 10))
                    p.addQuadCurve(to: CGPoint(x: 0, y: 15),
                                   control: CGPoint(x: 0, y: 25))
                    p.addQuadCurve(to: CGPoint(x: 0, y: 5),
                                   control: CGPoint(x: -10, y: 5))
                }
                .fill(.white)
                .stroke(.black)
                .offset(x: 253, y: 453)
                
                // 領巾
                Path { p in
                    p.move(to: CGPoint(x: -10, y: -5))
                    p.addQuadCurve(to: CGPoint(x: -12, y: 18),
                                   control: CGPoint(x: -15, y: 10))
                    p.addQuadCurve(to: CGPoint(x: 15, y: 20),
                                   control: CGPoint(x: 0, y: 25))
                    p.addQuadCurve(to: CGPoint(x: -10, y: -5),
                                   control: CGPoint(x: -10, y: 10))
                    p.closeSubpath()
                }
                .fill(.scarf)
                .stroke(.black)
                .offset(x: 204, y: 405)
                Path { p in
                    p.move(to: CGPoint(x: 0, y: 0))
                    p.addQuadCurve(to: CGPoint(x: -20, y: 20),
                                   control: CGPoint(x: -10, y: 15))
                    p.addQuadCurve(to: CGPoint(x: 15, y: 0),
                                   control: CGPoint(x: 0, y: 20))
                    p.closeSubpath()
                }
                .fill(.scarf)
                .stroke(.black)
                .offset(x: 250, y: 405)
                
                // 領結-左
                Rectangle()
                    .fill(.scarf)
                    .stroke(.black)
                    .frame(width: 12, height: 8)
                    .rotationEffect(.degrees(25))
                    .offset(x: -2, y: 111)
                
                // 領結-右
                Rectangle()
                    .fill(Color(red: 80/255, green: 80/255, blue: 150/255))
                    .stroke(.black)
                    .frame(width: 8, height: 12)
                    .rotationEffect(.degrees(30))
                    .offset(x: -17, y: 112)
                
                // 領結-中間
                Rectangle()
                    .fill(.scarf)
                    .stroke(.black)
                    .frame(width: 10, height: 10)
                    .rotationEffect(.degrees(40))
                    .scaleEffect(y: 0.8)
                    .offset(x: -10, y: 103)
                
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
                    p.addQuadCurve(to: CGPoint(x: 10, y: 30),
                                   control: CGPoint(x: -10, y: 10))
                    p.addQuadCurve(to: CGPoint(x: 0, y: 0),
                                   control: CGPoint(x: -22, y: 15))
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
                ZStack {
                    // 1. 黃色光暈
                    Circle()
                        .fill(RadialGradient(colors: [Color(red: 1, green: 0.8, blue: 0.3).opacity(0.8), .clear],
                                             center: .center, startRadius: 0, endRadius: 32))
                        .frame(width: 64)

                    // 2. 長短不一的光芒
                    Flash()
                        .fill(RadialGradient(colors: [.white, .yellow, .orange],
                                             center: .center, startRadius: 3, endRadius: 40))
                        .shadow(color: .yellow, radius: 3)

                    // 3. 白色中心
                    Circle()
                        .fill(.white)
                        .frame(width: 22)
                        .blur(radius: 3)
                }
                .frame(width: 90, height: 90)
                .rotationEffect(.degrees(-8))
                .offset(x: -40, y: 30)
            }.frame(width: 466, height: 644)
        }
    }
}

// 斗笠結構
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

// 火光結構
struct Flash: Shape {
    // 每 45 度一根光芒，從右開始順時針
    var rays: [CGFloat] = [0.75, 0.25, 0.75, 0.3, 0.9, 0.3, 1.0, 0.25]
    var inner: CGFloat = 0.2   // 光芒根部的寬度

    func path(in rect: CGRect) -> Path {
        let c = CGPoint(x: rect.midX, y: rect.midY)
        let r = min(rect.width, rect.height) / 2
        let n = rays.count
        var p = Path()
        for i in 0..<n {
            let a = Double(i) / Double(n) * 2 * .pi          // 光芒尖端的角度
            let b = a + .pi / Double(n)                      // 兩根光芒中間的角度
            let tip = CGPoint(x: c.x + r * rays[i] * cos(a), y: c.y + r * rays[i] * sin(a))
            let valley = CGPoint(x: c.x + r * inner * cos(b), y: c.y + r * inner * sin(b))
            i == 0 ? p.move(to: tip) : p.addLine(to: tip)
            p.addLine(to: valley)
        }
        p.closeSubpath()
        return p
    }
}

#Preview {
    ContentView()
}
