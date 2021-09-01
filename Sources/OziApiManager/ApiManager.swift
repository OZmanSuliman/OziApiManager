//
//  File.swift
//
//
//  Created by Osman Solomon on 31/08/2021.
//

import Alamofire
import Foundation

public typealias apiSuccess = (_ data: Data?, _ errorString: String?, _ statusCode: Int?) -> ()
public typealias apiFailure = (_ errorString: Error) -> ()

public struct ApiManager {
    public static let `default` = ApiManager()
    public init() {}

    public func getMethod(url: String, withSuccess success: @escaping apiSuccess, withapiFiluer failure: @escaping apiFailure) {
        AF.request(url)
            .responseData { response in
                switch response.result {
                case .success(let value):
                    success(value, response.error?.localizedDescription, response.response?.statusCode)
                case .failure(let error):
                    failure(error)
                }
            }
    }
} 
