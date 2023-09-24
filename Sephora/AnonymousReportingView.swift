import SwiftUI

struct AnonymousReportView: View {
    @State private var incidentType = ""
    @State private var description = ""
    @State private var location = ""
    @State private var isAnonymous = true
    @State private var isReportSubmitted = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Incident Details")) {
                    TextField("Incident Type", text: $incidentType)
                    TextField("Description", text: $description)
                    TextField("Location", text: $location)
                }

                Section(header: Text("Reporting Options")) {
                    Toggle("Report Anonymously", isOn: $isAnonymous)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                }

                Section {
                    Button(action: submitReport) {
                        Text("Submit Report")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(isReportSubmitted)
                }

                if isReportSubmitted {
                    Text("Report submitted successfully.")
                        .foregroundColor(.green)
                }
            }
            .navigationTitle("Anonymous Report")
        }
    }

    func submitReport() {
        // Simulate sending the report to a secure server.
        // In a real app, you would make a network request to your server.
        // Handle errors, security, and privacy concerns properly in a production app.

        let report = AnonymousReport(
            incidentType: incidentType,
            description: description,
            location: location,
            isAnonymous: isAnonymous
        )

        // Send the report to the server (simulated here).
        if sendReportToServer(report) {
            isReportSubmitted = true
        } else {
            // Handle submission failure (e.g., show an error message).
            isReportSubmitted = false
        }
    }

    func sendReportToServer(_ report: AnonymousReport) -> Bool {
        // Simulate sending the report to a secure server.
        // In a real app, use URLSession or a networking library to make a POST request to your server.

        let serverURL = URL(string: "https://your-server-endpoint.com/submit")!
        var request = URLRequest(url: serverURL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        do {
            let jsonData = try JSONEncoder().encode(report)
            request.httpBody = jsonData

            // Send the request (simulated here).
            // In a real app, handle response and errors properly.
            let _ = try JSONDecoder().decode(SubmissionResponse.self, from: jsonData)

            return true // Report submitted successfully.
        } catch {
            print("Error sending report: \(error)")
            return false // Report submission failed.
        }
    }
}

struct AnonymousReportView_Previews: PreviewProvider {
    static var previews: some View {
        AnonymousReportView()
    }
}

// Define data structures for the report and response.
struct AnonymousReport: Codable {
    let incidentType: String
    let description: String
    let location: String
    let isAnonymous: Bool
}

struct SubmissionResponse: Codable {
    // Define any response properties you need here.
}
