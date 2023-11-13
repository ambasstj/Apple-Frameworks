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
        xDismissButton(isShowingDetailView: $isShowingDetailView)
        FrameworkView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
        Spacer()
        browserLaunchButton(title: "Learn More", url: framework.urlString, isSafariViewShowing: $isSafariViewShowing)
        }
    }
#Preview {
    FrameworkDetailView(framework: MockData.frameworks[9], isShowingDetailView: .constant(false))
}
