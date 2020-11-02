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
    
    convenience init(dictionary: [String: Any]) {
        let name = dictionary["name"] as! String? ?? ""
        let address = dictionary["address"] as! String? ?? ""
        let averageRating = dictionary["averageRating"] as! Double? ?? 0.0
        let numberOfReviews = dictionary["numberOfReviews"] as! Int ?? 0
        let postingUserID = dictionary["postingUserID"] as! String? ?? ""
    
        self.init(name: name, address: address, averageRating: averageRating, numberOfReviews: numberOfReviews, postingUserID: postingUserID)
    }
//    func saveData(completion: @escaping (Bool) -> ()) {
//        return nil
//    }
}

