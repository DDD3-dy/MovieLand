//
//  RealMovieRepository.swift
//  MovieLand
//
//  Created by Dylan Caetano on 21/02/2022.
//

import Foundation

class RealMovieRepository {
    
    func getPopularSerieIDs(completion: @escaping ([Int]) -> Void) {
        let url = URL(string: "https://api.themoviedb.org/3/tv/popular?api_key=\(API_KEY)&language=fr")!
        
        var IDs = [Int]()
        
        JSONFetcher.fetchJSON(from: url) { json in
            let results = json["results"] as! [[String: Any]]
            
            for result in results {
                let id = result["id"] as! Int
                IDs.append(id)
            }
            completion(IDs)
        }
    }
    
    func getMovieDetails(id: Int, completion: @escaping (RestSerie) -> Void) {
        let url = URL(string: "https://api.themoviedb.org/3/tv/\(id)?api_key=\(API_KEY)&language=fr")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            
            let restSerie = try! decoder.decode(RestSerie.self, from: data)
            completion(restSerie)
        }
        
        task.resume()
    }
    
    func getCreditsDetails(forMovieID id: Int, completion: @escaping ([RestActor]) -> Void) {
        let url = URL(string: "https://api.themoviedb.org/3/tv/\(id)/credits?api_key=\(API_KEY)&language=fr")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            let resCast = try! decoder.decode(RestCredits.self, from: data)
            completion(resCast.cast)
        }
        
        task.resume()
    }
}
