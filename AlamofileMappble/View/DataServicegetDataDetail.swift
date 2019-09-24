//
//  DataServicegetDataDetail.swift
//  AlamofileMappble
//
//  Created by Boss on 9/23/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class DataServicegetDataDetail {
    static let sharedInstance: DataServicegetDataDetail = DataServicegetDataDetail()
    func getdataDetail(callBack : @escaping (DetailData) -> Void, failure: @escaping(String) -> Void)
    {
        let header = ["Authorization" : "0d550add9e0120013ceb4454af850baf51e597cf9bb6bf5073e8751b46a8543e4372c1ff5fb0f93b75aa0fd02f738fbeb2900fdcbb5368ab67b7c4b41580ed16"]
        
        let parameters: Parameters = [ "posgroup": "1", "poscode": "1"]
        Alamofire.request(getDataUrl.baseGetData, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: header).responseObject { (response: DataResponse<DetailData>) in
            switch response.result {
            case .success:
                DispatchQueue.main.async {
                    callBack(response.result.value!)
                }
            case .failure (let error):
                DispatchQueue.main.async {
                    failure(error.localizedDescription)
                }
                
            }
            
        }
    }
}

