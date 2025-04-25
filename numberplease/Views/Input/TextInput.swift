import SwiftUI

struct TextInput: View {
    @Binding var text: String
    var placeholder: String = "placeholder"
    var placeholderColor: Color = .grey400
    var backgroundColor: Color = .light
    var borderColor: Color = .black
    var textColor: Color = .black
    
    var body: some View {
        TextField("",
                  text: $text,
                  prompt: Text(placeholder)
            .font(.custom(Fonts.regular, size: 15))
            .foregroundStyle(placeholderColor)
        )
        .foregroundStyle(textColor)
        .padding()
        .background(backgroundColor)
        .overlay(RoundedRectangle(cornerRadius: 5).strokeBorder(borderColor, style: StrokeStyle(lineWidth: 1)))
    }
}

#Preview {
    TextInput(text: .constant(""))
}
