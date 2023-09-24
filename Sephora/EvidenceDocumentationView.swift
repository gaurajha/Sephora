import SwiftUI

struct Evidence: Identifiable, Codable {
    var id = UUID()
    var title: String
    var description: String
    var date: Date
}

class EvidenceListViewModel: ObservableObject {
    @Published var evidenceList: [Evidence] = []

    init() {
        loadEvidence()
    }

    func saveEvidence(evidence: Evidence) {
        evidenceList.append(evidence)
        saveEvidence()
    }

    func deleteEvidence(at indexSet: IndexSet) {
        evidenceList.remove(atOffsets: indexSet)
        saveEvidence()
    }

    private func saveEvidence() {
        if let encodedData = try? JSONEncoder().encode(evidenceList) {
            UserDefaults.standard.set(encodedData, forKey: "evidenceList")
        }
    }

    private func loadEvidence() {
        if let data = UserDefaults.standard.data(forKey: "evidenceList"),
           let loadedEvidence = try? JSONDecoder().decode([Evidence].self, from: data) {
            evidenceList = loadedEvidence
        }
    }
}

struct EvidenceDocumentationView: View {
    @StateObject private var viewModel = EvidenceListViewModel()
    @State private var title = ""
    @State private var description = ""
    @State private var date = Date()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Evidence Details")) {
                    TextField("Event Title", text: $title)
                    TextField("Description", text: $description)
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                }

                Section(header: Text("Actions")) {
                    Button(action: saveEvidence) {
                        Text("Save Evidence")
                    }
                }

                Section(header: Text("Saved Evidence")) {
                    List {
                        ForEach(viewModel.evidenceList) { evidence in
                            VStack(alignment: .leading) {
                                Text(evidence.title)
                                    .font(.headline)
                                Text(evidence.description)
                                    .font(.subheadline)
                                Text("Date: \(evidence.date, formatter: dateFormatter)")
                                    .font(.caption)
                            }
                        }
                        .onDelete(perform: deleteEvidence)
                    }
                }
            }
            .navigationTitle("Evidence \nDocumentation")
        }
    }

    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()

    private func saveEvidence() {
        let newEvidence = Evidence(title: title, description: description, date: date)
        viewModel.saveEvidence(evidence: newEvidence)
        title = ""
        description = ""
        date = Date()
    }

    private func deleteEvidence(at offsets: IndexSet) {
        viewModel.deleteEvidence(at: offsets)
    }
}


struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            EvidenceDocumentationView()
        }
    }
}
