import SwiftUI

struct ForgotPassword: View {
    @State var email: String = ""
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                BackHeaderWithoutNotification()
                
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
                            Text("Forgot Your Password?")
                                .font(.custom(Fonts.medium, size: 24))
                                .foregroundStyle(.dark)
                            
                            Spacer().frame(height: 10)
                            
                            PrimarySubHeading(text: "Please enter the email you signed up with to reset your password", color: .grey600)
                        }
                    }
                    
                    Spacer().frame(height: geo.size.height * 0.1)
                    
                    TextInput(text: $email,
                              placeholder: "email@example.com",
                              placeholderColor: .grey400,
                              backgroundColor: .grey100,
                              borderColor: .grey400,
                              textColor: .dark)
                    
                    Spacer()
                    
                    SolidButton(title: "Send Code", width: geo.size.width * 0.55)
                }
                .frame(minWidth: 0, maxWidth: geo.size.width)
                .padding(30)
            }
        }
    }
}

#Preview {
    ForgotPassword()
}
