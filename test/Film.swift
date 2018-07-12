//
//  Film.swift
//  test
//
//  Created by Noah Russell on 10/07/2018.
//  Copyright © 2018 Noah Russell. All rights reserved.
//

import UIKit
class Film {
    //MARK: Properties
    var name: String = ""
    var photo: UIImage? = nil
    var director: String = ""
    var genre: String = ""
    var rating: Int = 0
    //MARK: Initialization
    init?(name: String, photo: UIImage, director: String, genre: String, rating: Int) {
        //fail initialization if certain fields are empty
        if name.isEmpty || director.isEmpty || genre.isEmpty || rating < 0{
            return nil
        }
        self.name = name
        self.photo = photo
        self.director = director
        self.genre = genre
        self.rating = rating
    }
}
