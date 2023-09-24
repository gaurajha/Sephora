import SwiftUI

struct TryOutView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("app_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .cornerRadius(20)
                    .padding(.top, 30)

                Text("Welcome to SafeSpace")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                Text("Your trusted resource for support and information.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)

                Spacer()

                NavigationLink(destination: ServicesView()) {
                    Text("Get Help")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 44)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                        .padding(.bottom, 20)
                }

                NavigationLink(destination: InformationView()) {
                    Text("Learn More")
                        .foregroundColor(.blue)
                        .font(.headline)
                }
            }
            .padding()
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ServicesView: View {
    var body: some View {
        Text("Services View")
    }
}

struct InformationView: View {
    var body: some View {
        Text("Information View")
    }
}

struct TryOutView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

