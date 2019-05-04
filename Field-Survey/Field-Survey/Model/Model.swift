//
//  Model.swift
//  Field-Survey
//
//  Created by Steven Perrin on 5/2/19.
//  Copyright © 2019 Steven Perrin. All rights reserved.
//


import UIKit


struct field_observations: Decodable {
    var status : String
    var type : [Observation]
    
    static func load(from filename: String) -> field_observations? {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json"),
            let data = try? Data(contentsOf: url) else {
                return nil
        }
        let jsonDecoder = JSONDecoder()
        return try? jsonDecoder.decode(field_observations.self, from: data)
    }
}

struct Observation: Decodable {
//    enum classification: String {
//        case bird
//        case amphibian
//        case reptile
//        case insect
//        case fish
//        case plant
//        case mammal
//
//        var image: UIImage? {
//            return UIImage(named: self.rawValue + "Icon")
//        }
//    }
    var classification: String
    var title: String
    var description: String
    var date: Date
    
    enum Mykeys: String, CodingKey{
        case classification = "classification"
        case title = "title"
        case description = "description"
        case date = "date"
    }
}

//let jsonData = ObservationsJSONdata.data(using: .utf8)!
//let observation = try! JSONDecoder().decode(Observation.self, from: jsonData)




