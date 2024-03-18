// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct CustomAlertBox: View {
    let title: String
    let message: String
    let messageFontSize: CGFloat
    let boxSize: CGSize
    let boxBackgroundColor: Color
    
    public init(title: String, message: String, messageFontSize: CGFloat = 14, boxSize: CGSize = CGSize(width: 300, height: 200), boxBackgroundColor: Color = .white) {
        self.title = title
        self.message = message
        self.messageFontSize = messageFontSize
        self.boxSize = boxSize
        self.boxBackgroundColor = boxBackgroundColor
    }
    
    public var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .padding()
            Text(message)
                .font(.system(size: messageFontSize))
                .padding()
        }
        .frame(width: boxSize.width, height: boxSize.height)
        .background(boxBackgroundColor)
        .cornerRadius(15)
        .shadow(radius: 10)
    }
}

#Preview {
    CustomAlertBox(title: "Title", message: "Message", messageFontSize: CGFloat(20), boxSize: CGSize(width: 200, height: 100), boxBackgroundColor: Color.blue)
}
