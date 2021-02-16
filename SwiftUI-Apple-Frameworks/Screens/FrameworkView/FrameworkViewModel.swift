//
//  FrameworkViewModel.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Vasili Mandalac on 2/12/21.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {isShowingDetailView = true}
    }
    
    @Published var isShowingDetailView = false
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
}
