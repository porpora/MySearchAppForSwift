//
//  ItemSearchResultSet.swift
//  MySearchApp
//
//  Created by 宮内諒太 on 2018/07/09.
//  Copyright © 2018年 宮内諒太. All rights reserved.
//

import Foundation

class ItemSearchResultSet: Codable {
    var resultSet: ResultSet?
    
    private enum CodingKeys: String, CodingKey {
        case resultSet = "ResultSet"
    }
}

class ResultSet: Codable {
    var firstObject: FirstObject?
    private enum CodingKeys: String, CodingKey {
    case firstObject = "0"
    }
}

class FirstObject: Codable {
    var result: ResultSet?
    private enum CodingKeys: String, CodingKey {
        case result = "Result"
    }
}

class Result: Codable {
    var items: [ItemData] = [ItemData]()
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let keys = container.allKeys.sorted {
            Int($0.rawValue)! < Int($1.rawValue)!
        }
        for key in keys {
            let item = try container.decode(ItemData.self, forKey: key)
            items.append(item)
        }
    }
    func encode(to encoder: Encoder) throws {
    }
    
    private enum CodingKeys: String, CodingKey {
        case hit0 = "0"
        case hit1 = "1"
        case hit2 = "2"
        case hit3 = "3"
        case hit4 = "4"
        case hit5 = "5"
        case hit6 = "6"
        case hit7 = "7"
        case hit8 = "8"
        case hit9 = "9"
        case hit10 = "10"
        case hit11 = "11"
        case hit12 = "12"
        case hit13 = "13"
        case hit14 = "14"
        case hit15 = "15"
        case hit16 = "16"
        case hit17 = "17"
        case hit18 = "18"
        case hit19 = "19"
        case hit20 = "20"
    }
}

class ItemData: Codable {
    var name: String = ""
    var url: String = ""
    
    class ImageInfo: Codable {
        private enum CodingKeys: String, CodingKey {
            case medium = "Medium"
        }
        var medium: String
    }
    var imageInfo: ImageInfo = ImageInfo()
    
    class PriceInfo: Codable {
        private enum CodingKeys: String, CodingKey {
            case price = "_value"
        }
        var price: String?
    }
    var priceInfo: PriceInfo = PriceInfo()
    
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case url = "Url"
        case imageInfo = "Image"
        case priceInfo = "Price"
    }
}
