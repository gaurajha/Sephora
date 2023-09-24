//
//  EmergencyContactView.swift
//  hackathon
//
//  Created by Gaura Jha on 17/9/23.
//

import SwiftUI

struct EmergencyContactView: View {
    var body: some View {
        Text("Emergency Contacts")
            .font(.title)
            .fontWeight(.bold)
            .fontDesign(.rounded)
        
        Text(" If you are in immediate danger, please contact\n 9-1-1")
        
        Text("National Domestic Violence Hotline\n 1-800-799-7233\n or \n 1-800-787-3224")
        
        
        
        //Text("Call [123-456-7890](tel:1234567890)")
        
        //Link("(800)799-7233", destination: URL(string: "tel:8007997233")!)
        
        //Link("(800)555-1212", destination: URL(string: "tel:8005551212")!)

        
        
    }
}

struct EmergencyContactView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyContactView()
    }
}
