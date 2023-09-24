//
//  ActualView.swift
//  hackathon
//
//  Created by Gaura Jha on 17/9/23.
//

import SwiftUI


struct ActualView: View {
    var body: some View {
        NavigationStack{
                VStack {
                    Image("app_logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                        .padding(.top, 30)

                    Text("Welcome to SafeSpace")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)

                    Text("Your trusted resource for support\n and information.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)

                    Spacer()

                    NavigationLink(destination: AnonymousReportView()) {
                        Text("Anonymous Reporting")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                            .padding(.bottom, 20)
                    }
                    
                    NavigationLink(destination: ResourceFinderView()) {
                        Text("Resources")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                            .padding(.bottom, 20)
                    }
                    
                    NavigationLink(destination: ChatbotView()) {
                        Text("Talk to a ChatBot")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                            .padding(.bottom, 20)
                    }
                    
                    NavigationLink(destination: SafeLocationFinderView().environmentObject(LocalSearchService())) {
                        Text("Safe Location Finder")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                            .padding(.bottom, 20)
                    }
                    
                    NavigationLink(destination: SafePlanView()) {
                        Text("Create a Safe Plan")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                            .padding(.bottom, 20)
                    }
                    NavigationLink(destination: EvidenceDocumentationView()) {
                        Text("Document any Evidence")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                            .padding(.bottom, 20)
                    }
                }
                .padding()
                .navigationTitle("")
                .navigationBarHidden(true)
                    
                }
            }
        }
        
    


struct ActualView_Previews: PreviewProvider {
    static var previews: some View {
        ActualView()
    }
}
