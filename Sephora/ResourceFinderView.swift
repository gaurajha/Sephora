import SwiftUI

struct PhoneCallView: View {
    let phoneNumber: String

    var body: some View {
        Link("Call \(phoneNumber)", destination: URL(string: "tel:\(phoneNumber)")!)
            .foregroundColor(.blue)
            .font(.headline)
        Link("Call \(phoneNumber)", destination: URL(string: "tel:\(phoneNumber)")!)
            .foregroundColor(.blue)
            .font(.headline)
    }
}

struct ResourceFinderView: View {
    var body: some View {
        ScrollView{
            VStack {
                
                Text("Here are some critical Phone Numbers and Websites at your disposal to help provide support.")
                    .font(.title).bold()
                Spacer()
                                .frame(minHeight: 10, maxHeight: 600)
                Text("If you are in immediate danger, please contact:")
                    .font(.system(size: 25))
                Text( "Call 911")
                    .foregroundColor(.blue)
                    .font(.headline)
                Text("911 is a critical emergency service that  responds to distress calls, providing immediate assistance for the safety of victims and survivors of violence and abuse by dispatching law enforcement or medical help to their location.\n--- \n--- ")
                    .font(.system(size: 15))
                Spacer()
                                .frame(minHeight: 10, maxHeight: 600)
                Text("National Domestic Violence Hotline (USA)")
                    .font(.subheadline)
                Text("The National Domestic Violence Hotline provides vital support to victims and survivors of violence and abuse by offering confidential and compassionate assistance 24/7. \n Phone Number: ")
                    .font(.system(size: 15))
                Text( "Call 1-800-799-7233")
                    .foregroundColor(.blue)
                    .font(.headline)
                Text(" or ")
                Text("Call 1-800-787-3224")
                    .foregroundColor(.blue)
                    .font(.headline)
                Link("Visit National Domestic Violence Hotline ", destination: URL(string: "https://www.thehotline.org/")!)
                Spacer()
                                .frame(minHeight: 10, maxHeight: 600)
                
                Text("National Dating Abuse Helpline (LoveisRespect)")
                    .font(.subheadline)
                Text("The National Dating Abuse Helpline, known as LoveisRespect, serves as a crucial lifeline for young people experiencing dating violence and abuse in the United States.")
                    .font(.system(size: 15))
                Link("Visit National Dating Abuse Helpline", destination: URL(string: "https://www.loveisrespect.org/")!)
                
                Spacer()
                                .frame(minHeight: 10, maxHeight: 600)
                
                Text("National Network to End Domestic Violence (NNEDV)")
                    .font(.subheadline)
                Text("The National Network to End Domestic Violence (NNEDV) plays a crucial role in supporting victims by providing a national platform for advocacy, awareness, and policy initiatives aimed at ending domestic violence.")
                    .font(.system(size: 15))
                Link("Visit National Network to End Domestic Violence (NNEDV) ", destination: URL(string: "https://nnedv.org/")!)
                Spacer()
                                .frame(minHeight: 10, maxHeight: 600)
                Text("National Resource Center on Domestic Violence (NRCDV)")
                    .font(.subheadline)
                Text("The National Resource Center on Domestic Violence (NRCDV) plays a crucial role in supporting domestic violence victims by providing comprehensive resources, training, and technical assistance to service providers and advocates across the country. ")
                    .font(.system(size: 15))
                Link("Visit National Resource Center on Domestic Violence (NRCDV)", destination: URL(string: "https://www.nrcdv.org/")!)
                
                
                
                
                
                
            }.padding([.top, .leading, .bottom, .trailing])
        }
    }
    
    struct ResourceFinderView_Previews: PreviewProvider {
        static var previews: some View {
            ResourceFinderView()
        }
    }
}
