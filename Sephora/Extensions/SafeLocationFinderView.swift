//
//  SafeLocationFinderView.swift
//  hackathon
//
//  Created by Gaura Jha on 17/9/23.
//


import MapKit
import SwiftUI
import CoreLocation



class LocationManager: NSObject, ObservableObject {
    let locationManager = CLLocationManager()
    let locationmanagerDelegate = CLLocationManagerDelegate.self
    @Published var region = MKCoordinateRegion.defaultRegion()
    
    override init() {
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.requestLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    private func checkAuthorization() {
        switch locationManager.authorizationStatus {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("your location is restricted.")
        case .denied:
            print("You have denied this app to access your location services.")
        case.authorizedAlways, .authorizedWhenInUse:
            guard let location = locationManager.location else {return}
            region = MKCoordinateRegion(center:location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))
        @unknown default:
            break
        }
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        DispatchQueue.main.async { [weak self] in
            self?.region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan( latitudeDelta:0.25, longitudeDelta: 0.25))}
        }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription )
    }
}




struct SafeLocationFinderView: View {
    @EnvironmentObject var localSearchService: LocalSearchService
    @State private var search: String = " "
    
    
    var body: some View {
        VStack{
            
            TextField("Search", text: $search)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    localSearchService.search(query: search)
                }.padding()
            
            
            if localSearchService.landmarks.isEmpty {
                Text("Type your desired location into the Search Bar.")
                    .padding()
                    .overlay(
                        RoundedRectangle (cornerRadius: 16)
                            .stroke (.gray, lineWidth: 2)
                    )
            } else {
                LandmarkListView()

            }
            
            Map(coordinateRegion: $localSearchService.region, showsUserLocation: true, annotationItems: localSearchService.landmarks) { landmark in
                
                MapAnnotation(coordinate: landmark.coordinate) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(localSearchService.landmark == landmark ? .purple: .red)
                        .scaleEffect(localSearchService.landmark == landmark ? 2: 1)
                }
                
            }
            
            Spacer()
                
            }
    }
}


struct SafeLocationFinderView_Previews: PreviewProvider {
static var previews: some View {
    SafeLocationFinderView().environmentObject(LocalSearchService())
}
}

