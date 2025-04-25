import SwiftUI

struct PrimarySubHeading: View {
    let text: String
    var color: Color = .dark
    
    var body: some View {
        Text(text)
            .font(.custom(Fonts.regular, size: 16))
            .foregroundColor(color)
            .multilineTextAlignment(.leading)
    }
}

#Preview {
    PrimarySubHeading(text: "Hello world")
}

