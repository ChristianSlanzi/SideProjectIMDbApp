//
//  MovieDetailsViewControllerViewModel.swift
//  SideProjectIMDbApp
//
//  Created by Christian Slanzi on 23.08.21.
//

import Foundation
import IMDbApiModule

class MovieDetailsViewControllerViewModel {
    
    let movie: MostPopularDataDetail
    init(movie: MostPopularDataDetail) {
        self.movie = movie
    }
    
    func getTitle() -> String {
        return movie.title
    }
    
    func getDescription() ->  String {
        return movie.fullTitle
    }
    
    func getCrew() -> String {
        return movie.crew
    }
    
    func getImageUrl() -> URL? {
        let url = URL(string: movie.image)
        
        /*
        var path = "https://imdb-api.com/images/original/" + url!.lastPathComponent
        guard let index = path.range(of: "._V1") else {
            return nil
        }
        path = path.substring(to: index.lowerBound)
        path.append("._V1_Ratio0.6791_AL_.jpg")
        return URL(string: path)
        */
        
        guard let url = url else {
            return nil
        }
        return url.imdbOriginalUrl()
    }
}
