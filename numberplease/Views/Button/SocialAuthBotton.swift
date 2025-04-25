import SwiftUI

struct SocialAuthBotton: View {
    let icon: ImageResource
    let title: String
    
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                Spacer().frame(width: 20)
                Text(title)
                    .font(.custom(Fonts.semiBold, size: 20))
                    .foregroundStyle(.light)
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 50,
                   maxHeight: 50,
                   alignment: .center)
            .background(.red900)
            .clipShape(.capsule)
            .padding(.bottom, 5)
        }
        
    }
}

#Preview {
    SocialAuthBotton(icon: .facebookLogo, title: "Login with Facebook")
}
