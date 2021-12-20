//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Hariharan Ganesan on 19/12/21.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        Text(weather.name)
            .bold()
            .font(.title)
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
