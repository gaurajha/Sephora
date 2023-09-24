import SwiftUI

struct ChatMessage: Identifiable {
    let id = UUID()
    let content: String
    let isUser: Bool
}

struct ChatbotView: View {
    @State private var messages: [ChatMessage] = []
    @State private var userInput = ""

    var body: some View {
        VStack {
            List(messages) { message in
                MessageView(message: message)
            }

            HStack {
                TextField("Ask a question...", text: $userInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Send") {
                    sendMessage(content: userInput, isUser: true)
                    respondToUserInput(userInput)
                    userInput = ""
                }
            }
            .padding()
        }
        .navigationTitle("Chatbot")
    }

    func sendMessage(content: String, isUser: Bool) {
        let message = ChatMessage(content: content, isUser: isUser)
        messages.append(message)
    }

    func respondToUserInput(_ input: String) {
        // Predetermined questions and responses
        let responses: [String: String] = [
                "What is domestic violence?": """
                Domestic violence is a pattern of abusive behaviors used by one person to gain and maintain control over another person in a relationship. It can include physical, emotional, verbal, sexual, and financial abuse. It is a serious issue that affects many people, and help is available.
                """,

                "How can I recognize signs of domestic violence?": """
                Recognizing signs of domestic violence can be crucial for your safety. Common signs include physical injuries, isolation from friends and family, control over finances, threats, intimidation, and emotional manipulation. If you suspect someone is experiencing domestic violence, offer support and encourage them to seek help.
                """,

                "How can I help a friend who is a victim of domestic violence?": """
                Supporting a friend who is a victim of domestic violence is essential. Listen non-judgmentally, validate their feelings, and let them know you care. Encourage them to seek professional help and connect them with local resources like shelters and hotlines. Respect their choices, as leaving an abusive relationship can be complex and dangerous.
                """,

                "Where can I find a safe place to stay if I need to leave an abusive situation?": """
                There are shelters and safe houses available to provide temporary refuge for individuals leaving abusive situations. Local domestic violence shelters, organizations, and hotlines can help you find a safe place to stay. It's essential to plan your exit carefully and consider your safety during this process.
                """,

                "What legal options do I have if I'm a victim of domestic violence?": """
                Legal options for victims of domestic violence may include obtaining a restraining order (also known as a protection order), pressing charges against the abuser, and seeking legal representation. Consult with an attorney or contact your local domestic violence support organizations for guidance on the legal steps you can take.
                """,
            "Hello": "Hello? Is everything alright?",
            "How can I stay safe?": """
    Your safety is a top priority. Here are some tips:

    1. Trust your instincts: If you feel unsafe, take it seriously.
    2. Create a safety plan: Plan how to get out of your home safely if needed.
    3. Communicate with a trusted person: Let someone you trust know about your situation.
    4. Use technology safely: Be cautious about your online presence and sharing information.
    5. Know emergency contacts: Have numbers for local shelters and law enforcement.
    6. Memorize safe locations: Identify safe places you can go in an emergency.
    7. Document incidents: Keep a record of abusive incidents.
    8. Seek legal advice: Consult an attorney if you have legal concerns.
    9. Contact a support organization: Reach out to a domestic violence support group or hotline.
    10. Stay strong: Remember, you are not alone, and help is available.

    Please remember, your safety matters, and there are resources available to support you.
    """
            // Add more questions and responses here
        ]

        if let response = responses[input] {
            sendMessage(content: response, isUser: false)
        } else {
            sendMessage(content: "I'm here to help, but I don't understand that question.", isUser: false)
        }
    }
}

struct MessageView: View {
    let message: ChatMessage

    var body: some View {
        Group {
            if message.isUser {
                HStack {
                    Spacer()
                    Text(message.content)
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            } else {
                HStack {
                    Text(message.content)
                        .padding(10)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Spacer()
                }
            }
        }
        .padding(5)
    }
}


struct ChatbotApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}

