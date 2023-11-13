//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Tevin Jones on 11/12/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @State private var isSafariViewShowing = false
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView.toggle()
            } label: {
                dismissButtonImage()
            }
            .padding()
        }
        
        Spacer()
        FrameworkView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
        Spacer()
        Button("View More") {
            isSafariViewShowing.toggle()
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: 200, height: 50)
        .foregroundColor(.white)
        .background(Color.blue.gradient)
        .cornerRadius(10.0)
        .fullScreenCover(isPresented: $isSafariViewShowing) {
            if let url = URL(string: framework.urlString){
                SafariView(url: url)
            }
            else {
                SafariView(url: URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[9], isShowingDetailView: .constant(false))
}

struct dismissButtonImage: View {
    var body: some View {
        Image(systemName: "xmark")
            .imageScale(.large)
            .foregroundColor(Color(.label))
    }
}
