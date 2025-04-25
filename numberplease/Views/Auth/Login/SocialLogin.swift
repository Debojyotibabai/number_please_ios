import SwiftUI

struct SocialLogin: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer().frame(height: geo.size.height * 0.1)
                VStack {
                    HStack {
                        Image(.one1)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.2)
                        
                        Spacer()
                            .frame(width: 35)
                        
                        VStack(alignment: .leading) {
                            Text("Welcome back to")
                                .font(.custom(Fonts.medium, size: 24))
                                .foregroundStyle(.dark)
                            
                            Text("Number, Please!")
                                .font(.custom(Fonts.extraBold, size: 24))
                                .foregroundStyle(.dark)
                        }
                    }
                    
                    Spacer().frame(height: geo.size.height * 0.045)
                    
                    HStack {
                        SolidButton(title: "Login", width: geo.size.width * 0.4)
                        BorderedButton(title: "Sign Up", width: geo.size.width * 0.4)
                    }
                }
                .frame(minWidth: 0, maxWidth: geo.size.width)
                .padding(30)
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 30)
                        
                        Text("Please tap a social media below\nto log in to your account")
                            .font(.custom(Fonts.medium, size: 20))
                            .foregroundStyle(.light)
                        
                        Spacer().frame(height: geo.size.height * 0.1)
                        
                        SocialAuthBotton(icon: .facebookLogo, title: "Login with Facebook")
                        SocialAuthBotton(icon: .googleLogo, title: "Login with Google")
                        SocialAuthBotton(icon: .appleLogo, title: "Login with Apple")
                        
                        Spacer().frame(height: geo.size.height * 0.1)
                        
                        Text("Login with email")
                            .font(.custom(Fonts.semiBold, size: 20))
                            .foregroundStyle(.grey400)
                            .frame(minWidth: 0,
                                   maxWidth: geo.size.width,
                                   minHeight: 0,
                                   maxHeight: geo.size.height,
                                   alignment: .center)
                        
                    }
                    .padding(.horizontal, 30)
                }
                .frame(minWidth: 0,
                       maxWidth: geo.size.width,
                       minHeight: 0,
                       maxHeight: geo.size.height,
                       alignment: .topLeading)
                .background(.grey900)
            }
        }
    }
}

#Preview {
    SocialLogin()
}
