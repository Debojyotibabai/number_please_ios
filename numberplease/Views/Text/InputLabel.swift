import SwiftUI

struct InputLabel: View {
    let text: String
    var color: Color = .dark
    
    var body: some View {
        Text(text)
            .font(.custom(Fonts.regular, size: 15))
            .foregroundColor(color)
            .multilineTextAlignment(.leading)
    }
}

#Preview {
    InputLabel(text: "Hello world")
}
