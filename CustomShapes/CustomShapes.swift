//
//  ContentView.swift
//  CustomShapes
//
//  Created by Skorobogatow, Christian on 3/8/22.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
    
}

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            
            let horizontalOffet: CGFloat = rect.width * 0.2
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - horizontalOffet, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX + horizontalOffet, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            
        }
    }

}

struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let horizontalOffet: CGFloat = rect.width * 0.2
            path.move(to: CGPoint(x: rect.minX + horizontalOffet, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - horizontalOffet, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX , y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX , y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX + horizontalOffet, y: rect.minY))
            
            
        }
    }
    
    
}

struct CustomShapes: View {
    var body: some View {
        ZStack {
            
            Color.red
                .ignoresSafeArea()
            
            Image("therock")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Triangle().rotation(Angle(degrees: 180)))
        
        }
    }
}

struct CustomShapes2: View {
    var body: some View {
        ZStack {
            
            Triangle()
                .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, dash: [5]))
                .fill(LinearGradient(colors: [.green, .blue], startPoint: .leading, endPoint: .trailing))
                .frame(width: 300, height: 300)
                .offset(y: 20)
        
        }
    }
}


struct CustomShapes3: View {
    var body: some View {
        ZStack {
            Diamond()
                .frame(width: 300, height: 300)
        
        }
    }
}

struct CustomShapes4: View {
    var body: some View {
        ZStack {
            Trapezoid()
                .frame(width: 300, height: 100)
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapes4()
    }
}







