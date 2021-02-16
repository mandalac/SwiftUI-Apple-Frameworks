//
//  SafariView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Vasili Mandalac on 2/15/21.
//

import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable {
    
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context:
                                    UIViewControllerRepresentableContext<SafariView>) {}
}
