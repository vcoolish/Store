//
//  Users.swift
//  Store
//
//  Created by Viacheslav Kulish on 12.04.2018.
//  Copyright © 2018 vcoolish. All rights reserved.
//

import Foundation
class User : Decodable {
    
    private var id: String
    
    private var createdDate: Date?
    
    private var modifiedDate: Date?
    
    private var  firstName: String
    
    private var surname: String
    
    private var patronymic: String
    
    var login: String
    
    private var password: String
    
    private var role: String
    
    private var active: Bool
    
    private var erpGuid: String
    
    public func getId() -> String {
        return id;
    }

    public func setId(id: String) { self.id = id }
    
    public func getCreatedDate() -> Date? {
        return createdDate;
    }
    
    public func setCreatedDate(createdDate: Date?) { self.createdDate = createdDate }
    
    public func getModifiedDate() -> Date? {
        return modifiedDate;
    }
    
    public func setModifiedDate(modifiedDate: Date?) { self.modifiedDate = modifiedDate }
    
    public func getFirstName() -> String {
        return firstName;
    }
    
    public func setFirstName(firstName: String) { self.firstName = firstName }
    
    public func getSurname() -> String {
        return surname;
    }
    
    public func setSurname(surname: String) { self.surname = surname }
    
    public func getPatronymic() -> String {
        return patronymic;
    }
    
    public func setPatronymic(patronymic: String) { self.patronymic = patronymic }
    
    public func getLogin() -> String {
        return login;
    }
    
    public func setLogin(login: String) { self.login = login }
    
    public func getPassword() -> String {
        return password;
    }
    
    public func setPassword(password: String) { self.password = password }
    
    public func getRole() -> String {
        return role;
    }
    
    public func setRole(role: String) { self.role = role }
    
    public func getActive() -> Bool {
        return active;
    }
    
    public func setActive(active: Bool) { self.active = active }
    
    public func getErpGuid() -> String {
        return erpGuid;
    }
    
    public func setErpGuid(erpGuid: String) { self.erpGuid = erpGuid }
    
}
