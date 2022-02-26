//
//  CardModel.swift
//  CustomAppBar
//
//  Created by nakamura motoki on 2022/02/26.
//

import SwiftUI

// Sample Data...
struct CardModel: Identifiable{
    var id: Int
    var image: String
    var title: String
    var details: String
}

var data = [
    CardModel(id: 0, image: "p1", title: "USA", details: "The U.S is a country or 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation's presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking."),
    CardModel(id: 1, image: "p2", title: "USA", details: "The U.S is a country or 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation's presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking."),
    CardModel(id: 2, image: "p3", title: "USA", details: "The U.S is a country or 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation's presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking."),
    CardModel(id: 3, image: "p4", title: "USA", details: "The U.S is a country or 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation's presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking."),
    CardModel(id: 4, image: "p5", title: "USA", details: "The U.S is a country or 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation's presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking."),
    CardModel(id: 5, image: "p6", title: "USA", details: "The U.S is a country or 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation's presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking."),
]
