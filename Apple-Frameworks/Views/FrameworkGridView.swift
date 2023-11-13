//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Tevin Jones on 11/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                ZStack{
                    LazyVGrid(columns: FrameworkGridViewModel().columns){
                        ForEach(MockData.frameworks){ framework in
                            FrameworkView(framework: framework)}
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

