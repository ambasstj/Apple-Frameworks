//
//  browserLaunchButton.swift
//  Apple-Frameworks
//
//  Created by Tevin Jones on 11/12/23.
//

import SwiftUI

struct browserLaunchButton: View {
    var title: String
    var url: String
    @Binding var isSafariViewShowing: Bool
    var body: some View {
        
        Button(title) {
            isSafariViewShowing.toggle()
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: 200, height: 50)
        .foregroundColor(.white)
        .background(Color.blue.gradient)
        .cornerRadius(10.0)
        .fullScreenCover(isPresented: $isSafariViewShowing) {
            if let url = URL(string: url){
                SafariView(url: url)
            }
            else {
                SafariView(url: URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!)
            }
        }
    }
}
    #Preview {
        browserLaunchButton(title: "Rick Roll", url: "https://www.youtube.com/watch?v=dQw4w9WgXcQ", isSafariViewShowing: .constant(false))
    }

