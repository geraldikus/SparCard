//
//  DottedSpacer.swift
//  SparCard
//
//  Created by Anton on 31.01.24.
//

import SwiftUI

struct DottedSpacer: View {
    var color: Color
    var lineWidth: CGFloat
    
    var body: some View {
        DotterShape()
            .stroke(style: StrokeStyle(lineWidth: lineWidth, dash: [2]))
            .foregroundColor(color)
            .frame(height: lineWidth)
    }
}

private struct DotterShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        }
    }
}


#Preview {
    DottedSpacer(color: .gray, lineWidth: 1)
}
