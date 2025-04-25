import SwiftUI

struct ManualLogin: View {
    @State var emailAddress: String = ""
    @State var password: String = ""
    
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
                        
                        PrimaryHeading(text: "Login with email", color: .light)
                        
                        Spacer().frame(height: 20)
                        
                        InputLabel(text: "Email", color: .light)
                        
                        Spacer().frame(height: 13)
                        
                        TextInput(text: $emailAddress,
                                  placeholder: "email address",
                                  placeholderColor: .grey400,
                                  backgroundColor: .grey800,
                                  borderColor: .grey400,
                                  textColor: .light)
                        
                        Spacer().frame(height: 20)
                        
                        InputLabel(text: "Password", color: .light)
                        
                        Spacer().frame(height: 13)
                        
                        TextInput(text: $password,
                                  placeholder: "password",
                                  placeholderColor: .grey400,
                                  backgroundColor: .grey800,
                                  borderColor: .grey400,
                                  textColor: .light)
                        
                        Spacer().frame(height: 15)
                        
                        HStack {
                            Spacer()
                            Text("Forgot Password?")
                                .font(.custom(Fonts.medium, size: 15))
                                .foregroundStyle(.grey400)
                        }
                        
                        Spacer().frame(height: 45)
                        
                        HStack {
                            SolidButton(title: "Login", width: geo.size.width * 0.6)
                        }
                        .frame(
                            minWidth: 0,
                            maxWidth: geo.size.width,
                            alignment: .center
                        )
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
    ManualLogin()
}
