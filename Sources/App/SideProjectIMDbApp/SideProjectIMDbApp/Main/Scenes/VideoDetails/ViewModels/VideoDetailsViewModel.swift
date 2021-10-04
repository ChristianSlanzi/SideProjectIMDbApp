//
//  VideoDetailsViewModel.swift
//  SideProjectIMDbApp
//
//  Created by Christian Slanzi on 04.10.21.
//

import Foundation
import IMDbApiModule

//MVVM

//Model -> ViewModel -> View

struct VideoDetailsViewModel { // viewModel is a converter from Model's Infos to View's infos
    
    private let movie: MostPopularDataDetail
    private let trailer: TrailerData
    
    init(movie: MostPopularDataDetail, trailer: TrailerData) {
        self.movie = movie
        self.trailer = trailer
    }
    
    // presentation properties
    var videoPreviewUrl: String {
        trailer.thumbnailUrl
    }

    var videoStatus: String = "NOW PLAYING"
}
