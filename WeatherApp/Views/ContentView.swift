//
//  ContentView.swift
//  WeatherApp
//
//  Created by Hariharan Ganesan on 18/12/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are:\(location.longitude),\(location.latitude)")
            } else {
                    if locationManager.isLoading {
                        LoadingView()
                    } else {
                        WelcomeView().environmentObject(locationManager)
                    }
                }
            
        }
        .background(Color(hue: 0.619, saturation: 0.894, brightness: 0.379))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
