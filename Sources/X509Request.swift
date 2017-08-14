//
//  X509Request.swift
//  EllipticCurveKeyPairDemo
//
//  Created by solvire on 8/12/17.
//
//

import Foundation



public class X509NameAttribute {
    
    
    var nameOID: ObjectIdentifier
    
    init (nameOID: ObjectIdentifier) {
        
        self.nameOID = nameOID
        
    }
    
}

public class X509Name {
    
    // a name is a list of name attributes
    // think of this as the SUBJECT NAME
    // other OID's will be represented elsewhere
    
    var attribtues = [X509NameAttribute]()
    
    init (attributes: [X509NameAttribute]) {
        for attribute in attributes {
            
            self.attribtues.append(attribute)
        }
    }
    
    
}

public struct CertificateSigningRequestBuilder {
    
    // heavy lifting tool to build CSRs
    // will take all the names and deal with building them out
    
    var subjectName: X509Name
    
    mutating func addSubjectName(subjectName: X509Name) {
        self.subjectName = subjectName
    }
    
    func generateRequest(){
        
        
    }

}
