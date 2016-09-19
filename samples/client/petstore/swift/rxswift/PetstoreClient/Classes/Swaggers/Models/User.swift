//
// User.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class User: JSONEncodable {
    public var id: Int64?
    public var username: String?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var password: String?
    public var phone: String?
    /** User Status */
    public var userStatus: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["username"] = self.username
        nillableDictionary["firstName"] = self.firstName
        nillableDictionary["lastName"] = self.lastName
        nillableDictionary["email"] = self.email
        nillableDictionary["password"] = self.password
        nillableDictionary["phone"] = self.phone
        nillableDictionary["userStatus"] = self.userStatus?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
