//
//  TitleDetailView.swift
//  MovHub
//
//  Created by Hariom Kumar on 30/01/26.
//

import SwiftUI

struct TitleDetailView: View {
    let title: Title
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVStack(alignment: .leading) {
                    
                }
            }
        }
    }
}

#Preview {
    TitleDetailView(title: Title.previewTitles[0])
}
