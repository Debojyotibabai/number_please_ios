import SwiftUI

struct VerifyEmail: View {
    @State var otp: [String] = Array(repeating: "", count: 5)
    
    @FocusState var focusedField: Int?
    
    func handleInputChange(_ newValue: String, _ index: Int) {
        // Limit to one character
        if newValue.count > 1 {
            otp[index] = String(newValue.prefix(1))
        }
        
        // Move focus to next field if valid
        if !newValue.isEmpty {
            if index < 5 {
                focusedField = index + 1
            } else {
                focusedField = nil // Last digit entered, dismiss keyboard
            }
        } else {
            if index > 0 {
                focusedField = index - 1 // Move focus back on delete
            }
        }
    }
    
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
                            Text("Verify Your Email")
                                .font(.custom(Fonts.medium, size: 24))
                                .foregroundStyle(.dark)
                            
                            Spacer().frame(height: 10)
                            
                            PrimarySubHeading(text: "Please enter the 5 digit code sent to email@example.com", color: .grey600)
                        }
                    }
                    
                    Spacer().frame(height: geo.size.height * 0.1)
                    
                    OtpInput(otp: $otp,
                             focusedField: $focusedField,
                             handleInputChange: handleInputChange)
                    
                    Spacer().frame(height: 30)
                    
                    HStack {
                        Text("Didn't receive the code?")
                            .font(.custom(Fonts.regular, size: 16))
                            .foregroundStyle(.grey400)
                        
                        Text("Resend")
                            .font(.custom(Fonts.semiBold, size: 16))
                            .foregroundStyle(.red900)
                    }
                    
                    Spacer()
                    
                    SolidButton(title: "Confirm", width: geo.size.width * 0.55)
                    
                    Spacer().frame(height: 30)
                    
                    Text("Change Email?")
                        .font(.custom(Fonts.medium, size: 16))
                        .foregroundStyle(.grey900)
                }
                .frame(minWidth: 0, maxWidth: geo.size.width)
                .padding(30)
            }
        }
    }
}

#Preview {
    VerifyEmail()
}
