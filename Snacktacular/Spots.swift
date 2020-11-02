//
//  Spots.swift
//  Snacktacular
//
//  Created by Marissa D'Antonio on 11/2/20.
//

import Foundation
import Firebase

class Spots {
    var spotArray: [Spot] = []
    var db: Firestore!
    
    init () {
        db = Firestore.firestore()
    }
    
    func loadData(completed: @escaping () -> ()) {
        db.collection("spots").addSnapshotListener { (querySnapshot, error) in
            guard error == nil else {
                print("error")
                return completed()
            }
            self.spotArray = []
            for document in querySnapshot!.documents {
                let spot = Spot(dictionary: document.data())
                spot.doccumentID = document.documentID
                self.spotArray.append(spot)
            }
            completed()
        }
    }
}
