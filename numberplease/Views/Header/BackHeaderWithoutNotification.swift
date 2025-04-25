import SwiftUI

struct BackHeaderWithoutNotification: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundStyle(.light)
                .fontWeight(.medium)
            
            Spacer()
            
            Text("Number, Please!")
                .font(.custom(Fonts.extraBold, size: 20))
                .foregroundStyle(.light)
            
            Spacer()
        }
        .frame(minWidth: 0,
               maxWidth: .infinity)
        .padding(20)
        .background(.grey900)
    }
}

#Preview {
    BackHeaderWithoutNotification()
}
