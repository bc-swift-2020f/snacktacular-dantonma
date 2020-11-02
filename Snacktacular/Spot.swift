//
//  Spot.swift
//  Snacktacular
//
//  Created by Marissa D'Antonio on 11/2/20.
//

import Foundation
import Firebase

class Spot {
    var name: String
    var address: String
    var averageRating: Double
    var numberOfReviews: Int
    var postingUserID: String
    var doccumentID: String
    
    init(name: String, address: String, averageRating: Double, numberOfReviews: Int, postingUserID: String, doccumentID: String) {
        self.name = name
        self.address = address
        self.averageRating = averageRating
        self.numberOfReviews = numberOfReviews
        self.postingUserID = postingUserID
        self.doccumentID = doccumentID
    }
    
    convenience init() {
        self.init(name: "", address: "", averageRating: 0.0, numberOfReviews: 0, postingUserID: "", doccumentID: "")
    }
    func saveData(completion: @escaping (Bool) -> ()) {
        return nil
    }
}

