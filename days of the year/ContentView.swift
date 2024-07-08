import SwiftUI

struct ContentView: View {
    @State private var phoneNumber: String = ""
    @State private var isSubmitted: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Hey there, thanks for joining us on mobile too. :)")
                    .font(.title)
                    .padding()

                TextField("Enter your phone number", text: $phoneNumber)
                    .keyboardType(.phonePad)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button(action: {
                    isSubmitted = true
                }) {
                    Text("Submit")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()

                Spacer()
            }
            .padding()
            .background(
                NavigationLink(destination: SecondView(), isActive: $isSubmitted) {
                    EmptyView()
                }
                .hidden()
            )
        }
    }
}

struct SecondView: View {
    @State private var syncContacts: Bool = false
    @State private var syncCalendar: Bool = false

    var body: some View {
        VStack {
            Text("Let’s sync your contacts and/or calendar")
                .font(.title2)
                .padding()

            Text("To make it easier on you, import your contacts and we’ll automatically save your friends’ and family’s birthdays.")
                .font(.body)
                .padding()
            
            Toggle(isOn: $syncContacts) {
                Text("Sync contacts")
                    .font(.headline)
            }
            .padding()

            Toggle(isOn: $syncCalendar) {
                Text("Sync calendar")
                    .font(.headline)
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
