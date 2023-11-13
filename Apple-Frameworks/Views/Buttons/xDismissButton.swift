//
//  xDismissButton.swift
//  Apple-Frameworks
//
//  Created by Tevin Jones on 11/12/23.
//

import SwiftUI

struct xDismissButton: View {
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
    }}
#Preview{
        xDismissButton(isShowingDetailView: .constant(false))
    }



struct dismissButtonImage: View {
    var body: some View {
        Image(systemName: "xmark")
            .imageScale(.large)
            .foregroundColor(Color(.label))
    }
}
