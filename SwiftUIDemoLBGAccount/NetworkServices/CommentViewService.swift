//
//  CommentViewService.swift
//  SwiftUIDemoLBGAccount
//
//  Created by Kamlakar Shimpi on 11/12/24.
//

import Foundation

enum DemoError: Error {
    case invalidURL
    case invalidData
    case DecodingError
}

protocol CommentViewServiceDelegate {
    func getComments(completion: @escaping(Result<[CommentModel]?, DemoError>) -> Void)
}

class CommentViewService: CommentViewServiceDelegate  {
    
    func getComments(completion: @escaping(Result<[CommentModel]?, DemoError>) -> Void) {
        guard let url = URL(string: urlPass) else {
            return completion(.failure(.invalidURL))
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.invalidData))
            }
            let commentResponse = try? JSONDecoder().decode([CommentModel].self, from: data)
            if let commentResponse = commentResponse {
                return completion(.success(commentResponse))
            } else {
                completion(.failure(.DecodingError))
            }
        }.resume()
    }
    
    
}
