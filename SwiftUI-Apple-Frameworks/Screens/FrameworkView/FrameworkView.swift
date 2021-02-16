//
//  FrameworkView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Vasili Mandalac on 2/12/21.
//

import SwiftUI

struct FrameworkView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    ForEach(MockData.frameworks) {framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!,
                                    isShowingDetailView:
                                        $viewModel.isShowingDetailView)
            }
        }
    }
}

struct FrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkView()
            .preferredColorScheme(.dark)
    }
}


