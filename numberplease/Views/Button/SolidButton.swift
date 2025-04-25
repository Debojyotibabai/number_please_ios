import SwiftUI

struct SolidButton: View {
    let title: String
    let backgroundColor: Color = .red900
    let textColor: Color = .light
    let width: CGFloat
    let height: CGFloat = 40
    let action: () -> Void = {}
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.custom(Fonts.bold, size: 16))
                .foregroundStyle(textColor)
                .frame(width: width, height: height, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(backgroundColor, lineWidth: 3)
                )
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        
    }
}

#Preview {
    SolidButton(title: "Solid Button", width: 200)
}
