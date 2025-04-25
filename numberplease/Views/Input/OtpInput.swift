import SwiftUI

struct OtpInput: View {
    @Binding var otp: [String]
    @FocusState.Binding var focusedField: Int?
    var handleInputChange: (String, Int) -> Void
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(0..<5, id: \.self) { index in
                TextField("", text: $otp[index])
                    .keyboardType(.numberPad)
                    .frame(width: 50, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 2)
                            .stroke(.grey600, lineWidth: 1)
                    )
                    .multilineTextAlignment(.center)
                    .focused($focusedField, equals: index)
                    .onChange(of: otp[index]) { oldValue, newValue in
                        handleInputChange(newValue, index)
                    }
            }
        }
    }
}
