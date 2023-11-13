//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Tevin Jones on 11/12/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    @Published var isDetailViewShowing: Bool = false
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var selectedFramework: Framework?{
        didSet{isDetailViewShowing.toggle()}
    }
}
