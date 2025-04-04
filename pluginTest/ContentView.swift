import SwiftUI



struct ContentView: View {
    @State private var password: String = ""
    @State private var isUnlocked: Bool = false
    private let correctPassword = "123456" // Doğru şifre

    var body: some View {
        ZStack {
            // Arka plana görsel ekle
                   Image("background") // Görselin ismini buraya yazın
                       .resizable()
                       .scaledToFill() // Görseli ekranı dolduracak şekilde ölçeklendir
                       .edgesIgnoringSafeArea(.all) // Görselin tüm ekranı kaplamasını sağlar
            
            VStack {
                Text("Giriş Yap")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()

                SecureField("Şifrenizi girin", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .padding()
                    .frame(width: 300)
                    
                

                Button(action: {
                    checkPassword()
                }){
                    Text("Giriş Yap...")
                }.padding(.top, 20)
               
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Tüm ekranı kapla
        .onAppear {
            makeWindowFullScreen() // Pencereyi tam ekran yap
        }
    }

    func checkPassword() {
        if password == correctPassword {
            isUnlocked = true
            NSApplication.shared.terminate(nil) // Uygulamayı kapat (şifre doğruysa)
        }
    }

    private func makeWindowFullScreen() {
        DispatchQueue.main.async {
            if let window = NSApplication.shared.windows.first {
                window.setFrame(NSScreen.main!.frame, display: true)
                window.level = .screenSaver // En üst katmanda tut
                window.styleMask = [.borderless] // Pencereyi çerçevesiz yap
                window.makeKeyAndOrderFront(nil)
            }
        }
    }
}



#Preview {
    ContentView()
}
