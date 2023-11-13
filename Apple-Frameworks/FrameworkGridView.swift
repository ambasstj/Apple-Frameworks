//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Tevin Jones on 11/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        
        NavigationStack{
            ScrollView{
                ZStack{
    
                    LazyVGrid(columns: columns){
                        ForEach(MockData.frameworks){ framework in
                            FrameworkView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
       }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkView: View {

    @StateObject var viewModel = FrameworkGridViewModel()
    let framework: Framework
    
    var body: some View {
        
        VStack(spacing: 5){
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 100, height: 100)
            Text(framework.name)
                .foregroundStyle(.white)
                .font(.title2)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .bold()
        }
        .onTapGesture {
            viewModel.selectedFramework = framework
        }
        .padding(10)
        .sheet(isPresented: $viewModel.isDetailViewShowing) {
            FrameworkDetailView(framework: framework, 
                                isShowingDetailView: $viewModel.isDetailViewShowing)
        }
    }
        

    }

