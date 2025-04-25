import SwiftUI

struct PrimaryHeading: View {
    let text: String
    var color: Color = .dark
    
    var body: some View {
        Text(text)
            .font(.custom(Fonts.semiBold, size: 24))
            .foregroundColor(color)
            .multilineTextAlignment(.leading)
    }
}

#Preview {
    PrimaryHeading(text: "Hello world")
}
