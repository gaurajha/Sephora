//
//  SafePlanView.swift
//  hackathon
//
//  Created by Gaura Jha on 17/9/23.
//

import SwiftUI

struct SafePlanView: View {
    @State private var talkToAbuser = ""
    @State private var phoneWithAbuser = ""
    @State private var codeWord = ""
    @State private var lowRiskPlace = ""
    @State private var tellSomeone = ""
    @State private var names = ""
    @State private var friend = ""
    @State private var relative = ""
    @State private var coworker = ""
    @State private var counselor = ""
    @State private var shelter = ""
    @State private var others = ""
    @State private var leaving = ""
    @State private var goingHome = ""
    @State private var program = ""
    @State private var contact = ""
    @State private var police = ""
    @State private var DMProgram = ""
    @State private var SAProgram = ""
    @State private var lawyer = ""
    @State private var SpSupport = ""
    @State private var POfficer = ""
    @State private var otherss = ""
    var body: some View {
        ScrollView {
            VStack{
                Text("Safe Plan Maker")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                Spacer()
                
                    Text("The National Coalition Against Domestic Violence (NCADV) has created a list of questions that help in creating a personalized safety plan for each unique situation.")
                        .font(.subheadline)
                        .padding([.top, .leading, .bottom])
                    
                    
                    Text("\n 1. When I have to talk to the abuser, I can .")
                        .font(.subheadline)
                        .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $talkToAbuser, onCommit: {
                                       UserDefaults.standard.set(talkToAbuser, forKey: "talkToAbuser")
                                   })
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("\n 2.When I talk on the phone with the abuser, I can ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $phoneWithAbuser, onCommit: {
                                       UserDefaults.standard.set(phoneWithAbuser, forKey: "phoneWithAbuser")
                                   })
                    
                    
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("\n 3. I can make up a code word for my family, co-workers, friends and counselor so they know when to call for help for me. My code word is ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $codeWord, onCommit: {
                                       UserDefaults.standard.set(codeWord, forKey: "codeWord")
                                   })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Text("\n 4.  When I feel a fight coming on, I will try to move to a place that is lowest risk for getting hurt, such as (At home/work/public) : ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $lowRiskPlace, onCommit: {
                                       UserDefaults.standard.set(lowRiskPlace, forKey: "lowRiskPlace")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Text("\n 5.  I can tell my family, co-workers, boss, counselor or a friend about my situation. I feel safe telling")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $tellSomeone, onCommit: {
                                       UserDefaults.standard.set(tellSomeone, forKey: "tellSomeone")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n 6.  I can screen my calls, texts, emails, and visitors. I have the right to not receive harassing phone calls, texts or emails. I can ask friends, family members or co-workers to help me screen my contacts. I can ask these people for help: ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $names, onCommit: {
                                       UserDefaults.standard.set(names, forKey: "names")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Text("\n 7.   I can call any of the following people for assistance or support if necessary and ask them to call the police if they see the abuser harassing me. \n\t 1.  Friend: ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $friend, onCommit: {
                                       UserDefaults.standard.set(friend, forKey: "friend")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 2. Relative: ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $relative, onCommit: {
                                       UserDefaults.standard.set(relative, forKey: "relative")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 3. Co-worker: ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $coworker, onCommit: {
                                       UserDefaults.standard.set(coworker, forKey: "coworker")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 4. Counselor: ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $counselor, onCommit: {
                                       UserDefaults.standard.set(counselor, forKey: "counselor")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Text("\n\t 5. Shelter: ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $shelter, onCommit: {
                                       UserDefaults.standard.set(shelter, forKey: "shelter")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 6. Other: ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $others, onCommit: {
                                       UserDefaults.standard.set(others, forKey: "others")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 7. When leaving work, I can ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $leaving, onCommit: {
                                       UserDefaults.standard.set(leaving, forKey: "leaving")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 7. When walking, riding, or driving home, if problems occur, I can ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $goingHome, onCommit: {
                                       UserDefaults.standard.set(goingHome, forKey: "goingHome")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 8. I can attend a victim's/survivor's support group with the Domestic Violence program, like ")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $program, onCommit: {
                                       UserDefaults.standard.set(program, forKey: "program")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n 8.  Contact Information I Need To Have:")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $contact, onCommit: {
                                       UserDefaults.standard.set(contact, forKey: "contact")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 1. Police Department:")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $police, onCommit: {
                                       UserDefaults.standard.set(police, forKey: "police")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 2. Domestic Violence Program:")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $DMProgram, onCommit: {
                                       UserDefaults.standard.set(DMProgram, forKey: "DMProgram")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 3. Sexual Assault Program:")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $SAProgram, onCommit: {
                                       UserDefaults.standard.set(SAProgram, forKey: "SAProgram")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Text("\n\t 4. Attorney/Lawyer:")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $lawyer, onCommit: {
                                       UserDefaults.standard.set(lawyer, forKey: "lawyer")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 5. Spiritual Support/Clergy:")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $SpSupport, onCommit: {
                                       UserDefaults.standard.set(SpSupport, forKey: "SpSupport")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 6. Probation Officer:")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $POfficer, onCommit: {
                                       UserDefaults.standard.set(POfficer, forKey: "POfiicer")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("\n\t 7. Other:")
                    .padding([.top, .leading, .bottom])
                    TextField("Type Answer Here", text: $otherss, onCommit: {
                                       UserDefaults.standard.set(otherss, forKey: "otherss")})
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                
            }.padding([.top, .leading, .bottom, .trailing])
            }
            
        }
    }
    
    struct SafePlanView_Previews: PreviewProvider {
        static var previews: some View {
            SafePlanView()
        }
    }

