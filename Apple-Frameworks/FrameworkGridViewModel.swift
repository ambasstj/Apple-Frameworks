//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Tevin Jones on 11/12/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isDetailViewShowing.toggle()
        }
    }
    @Published var isDetailViewShowing: Bool = false
}
