//
//  DetailData.swift
//  AlamofileMappble
//
//  Created by Boss on 9/23/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import Foundation
import ObjectMapper
struct DetailData: Mappable{
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.lstMenuSales <- map["lstMenuSales"]
        self.lstDiscountAll <- map["lstDiscountAll"]
    }
    
    var lstMenuSales: [LstMenuSales]?
    var lstDiscountAll: [LstDiscountAll]?
}
struct LstMenuSales: Mappable{
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.id <- map["id"]
        self.icon <- map["icon"]
        self.name <- map["name"]
    }
    
    var id: String?
    var icon: String?
    var name: String?
    
}

struct LstDiscountAll: Mappable {
    init?(map: Map) {
    }
    
    var totalapply: String?
    var expirehour: String?
    var quantitycondition: String?
    var objapply: String?
    var expiredate: String?
    var itempriceidcondition: String?
    
    mutating func mapping(map: Map) {
        self.totalapply <- map["total_apply"]
        self.expirehour <- map["expire_hour"]
        self.quantitycondition <- map["quantity_condition"]
        self.objapply <- map["obj_apply"]
        self.expiredate <- map["expire_date"]
        self.itempriceidcondition <- map["itempriceid_condition"]
        
    }
}
