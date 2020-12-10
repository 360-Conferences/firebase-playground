//
//  ContentView.swift
//  Shared
//
//  Created by Shane Cowherd on 12/9/20.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Create Entry") {
                createEntry()
            }
        }
        
    }
    
    
    func createEntry() {
        
        Firestore.firestore().collection("books").addDocument(data: ["Book1": "Pages1"])
        
//        Firestore.firestore().collection("books").addSnapshotListener { (querySnapshot, error) in
//          guard let documents = querySnapshot?.documents else {
//            print("No documents")
//            return
//          }
//
//          documents.map { queryDocumentSnapshot -> Book in
//            // map document to Book instance here
//            return Book(title: "Post PC", author: "Shane Cowherd", numberOfPages: 8)
//          }
//        }
    }
}

struct Book: Identifiable {
  var id: String = UUID().uuidString
  var title: String
  var author: String
  var numberOfPages: Int
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
