import SwiftUI

struct SocialSignup: View {
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
                            Text("Welcome to")
                                .font(.custom(Fonts.medium, size: 24))
                                .foregroundStyle(.dark)
                            
                            Text("Number, Please!")
                                .font(.custom(Fonts.extraBold, size: 24))
                                .foregroundStyle(.dark)
                        }
                    }
                    
                    Spacer().frame(height: geo.size.height * 0.045)
                    
                    HStack {
                        BorderedButton(title: "Login", width: geo.size.width * 0.4)
                        SolidButton(title: "Sign Up", width: geo.size.width * 0.4)
                    }
                }
                .frame(minWidth: 0, maxWidth: geo.size.width)
                .padding(30)
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 30)
                        
                        Text("Please tap a social media below\nto create an account")
                            .font(.custom(Fonts.medium, size: 20))
                            .foregroundStyle(.light)
                        
                        Spacer().frame(height: geo.size.height * 0.1)
                        
                        SocialAuthBotton(icon: .facebookLogo, title: "Sign up with Facebook")
                        SocialAuthBotton(icon: .googleLogo, title: "Sign up with Google")
                        SocialAuthBotton(icon: .appleLogo, title: "Sign up with Apple")
                        
                        Spacer().frame(height: geo.size.height * 0.1)
                        
                        Text("Sign up with email")
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
    SocialSignup()
}
