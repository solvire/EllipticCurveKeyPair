//
//  OID.swift
//  EllipticCurveKeyPairDemo
//
//  Created by moz on 8/12/17.
//  Copyright © 2017 Agens AS. All rights reserved.
//

import Foundation

public class ObjectIdentifier {
    // an ID string for an object Identifier
    var oidString: String
    
    // each node of the identifier
    var nodes = [String]()
    
    var intNodes = [Int]()
    
    
    init(oidString: String) {
        // must take the string rep of decimal OID
        self.oidString = oidString
        
        // split the string up into it's nodes
        self.nodes = oidString.components(separatedBy: ".")
        
        // create a simlar list with these items cast to integer
        for nodeItem in self.nodes {
            self.intNodes.append(Int(nodeItem)!)
        }

    }
    
}


public class ExtensionOID {
    // represents the Extendsion OIDs
    static let SUBJECT_DIRECTORY_ATTRIBUTES = ObjectIdentifier(oidString: "2.5.29.9")
    static let SUBJECT_KEY_IDENTIFIER = ObjectIdentifier(oidString: "2.5.29.14")
    static let KEY_USAGE = ObjectIdentifier(oidString: "2.5.29.15")
    static let SUBJECT_ALTERNATIVE_NAME = ObjectIdentifier(oidString: "2.5.29.17")
    static let ISSUER_ALTERNATIVE_NAME = ObjectIdentifier(oidString: "2.5.29.18")
    static let BASIC_CONSTRAINTS = ObjectIdentifier(oidString: "2.5.29.19")
    static let NAME_CONSTRAINTS = ObjectIdentifier(oidString: "2.5.29.30")
    static let CRL_DISTRIBUTION_POINTS = ObjectIdentifier(oidString: "2.5.29.31")
    static let CERTIFICATE_POLICIES = ObjectIdentifier(oidString: "2.5.29.32")
    static let POLICY_MAPPINGS = ObjectIdentifier(oidString: "2.5.29.33")
    static let AUTHORITY_KEY_IDENTIFIER = ObjectIdentifier(oidString: "2.5.29.35")
    static let POLICY_CONSTRAINTS = ObjectIdentifier(oidString: "2.5.29.36")
    static let EXTENDED_KEY_USAGE = ObjectIdentifier(oidString: "2.5.29.37")
    static let FRESHEST_CRL = ObjectIdentifier(oidString: "2.5.29.46")
    static let INHIBIT_ANY_POLICY = ObjectIdentifier(oidString: "2.5.29.54")
    static let AUTHORITY_INFORMATION_ACCESS = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.1.1")
    static let SUBJECT_INFORMATION_ACCESS = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.1.11")
    static let OCSP_NO_CHECK = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.48.1.5")
    static let CRL_NUMBER = ObjectIdentifier(oidString: "2.5.29.20")
    static let PRECERT_SIGNED_CERTIFICATE_TIMESTAMPS = ObjectIdentifier(oidString: "1.3.6.1.4.1.11129.2.4.2")

}

public class NameOID {
    // represents the Named OID
    static let COMMON_NAME = ObjectIdentifier(oidString: "2.5.4.3")
    static let COUNTRY_NAME = ObjectIdentifier(oidString: "2.5.4.6")
    static let LOCALITY_NAME = ObjectIdentifier(oidString: "2.5.4.7")
    static let STATE_OR_PROVINCE_NAME = ObjectIdentifier(oidString: "2.5.4.8")
    static let STREET_ADDRESS = ObjectIdentifier(oidString: "2.5.4.9")
    static let ORGANIZATION_NAME = ObjectIdentifier(oidString: "2.5.4.10")
    static let ORGANIZATIONAL_UNIT_NAME = ObjectIdentifier(oidString: "2.5.4.11")
    static let SERIAL_NUMBER = ObjectIdentifier(oidString: "2.5.4.5")
    static let SURNAME = ObjectIdentifier(oidString: "2.5.4.4")
    static let GIVEN_NAME = ObjectIdentifier(oidString: "2.5.4.42")
    static let TITLE = ObjectIdentifier(oidString: "2.5.4.12")
    static let GENERATION_QUALIFIER = ObjectIdentifier(oidString: "2.5.4.44")
    static let X500_UNIQUE_IDENTIFIER = ObjectIdentifier(oidString: "2.5.4.45")
    static let DN_QUALIFIER = ObjectIdentifier(oidString: "2.5.4.46")
    static let PSEUDONYM = ObjectIdentifier(oidString: "2.5.4.65")
    static let USER_ID = ObjectIdentifier(oidString: "0.9.2342.19200300.100.1.1")
    static let DOMAIN_COMPONENT = ObjectIdentifier(oidString: "0.9.2342.19200300.100.1.25")
    static let EMAIL_ADDRESS = ObjectIdentifier(oidString: "1.2.840.113549.1.9.1")
    static let JURISDICTION_COUNTRY_NAME = ObjectIdentifier(oidString: "1.3.6.1.4.1.311.60.2.1.3")
    static let JURISDICTION_LOCALITY_NAME = ObjectIdentifier(oidString: "1.3.6.1.4.1.311.60.2.1.1")
    static let JURISDICTION_STATE_OR_PROVINCE_NAME = ObjectIdentifier(oidString: "1.3.6.1.4.1.311.60.2.1.2")
    static let BUSINESS_CATEGORY = ObjectIdentifier(oidString: "2.5.4.15")
    static let POSTAL_ADDRESS = ObjectIdentifier(oidString: "2.5.4.16")
    static let POSTAL_CODE = ObjectIdentifier(oidString: "2.5.4.17")
}

public class SignatureAlgorithmOID {
    
    static let RSA_WITH_MD5 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.4")
    static let RSA_WITH_SHA1 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.5")
    
    // This is an alternate OID for RSA with SHA1 that is occasionally seen
    static let _RSA_WITH_SHA1 = ObjectIdentifier(oidString: "1.3.14.3.2.29")
    static let RSA_WITH_SHA224 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.14")
    static let RSA_WITH_SHA256 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.11")
    static let RSA_WITH_SHA384 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.12")
    static let RSA_WITH_SHA512 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.13")
    static let ECDSA_WITH_SHA1 = ObjectIdentifier(oidString: "1.2.840.10045.4.1")
    static let ECDSA_WITH_SHA224 = ObjectIdentifier(oidString: "1.2.840.10045.4.3.1")
    static let ECDSA_WITH_SHA256 = ObjectIdentifier(oidString: "1.2.840.10045.4.3.2")
    static let ECDSA_WITH_SHA384 = ObjectIdentifier(oidString: "1.2.840.10045.4.3.3")
    static let ECDSA_WITH_SHA512 = ObjectIdentifier(oidString: "1.2.840.10045.4.3.4")
    static let DSA_WITH_SHA1 = ObjectIdentifier(oidString: "1.2.840.10040.4.3")
    static let DSA_WITH_SHA224 = ObjectIdentifier(oidString: "2.16.840.1.101.3.4.3.1")
    static let DSA_WITH_SHA256 = ObjectIdentifier(oidString: "2.16.840.1.101.3.4.3.2")
    
}


public class ExtendedKeyUsageOID {
    // extended Key Usage OIDs
    
    static let SERVER_AUTH = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.1")
    static let CLIENT_AUTH = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.2")
    static let CODE_SIGNING = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.3")
    static let EMAIL_PROTECTION = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.4")
    static let TIME_STAMPING = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.8")
    static let OCSP_SIGNING = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.9")
    static let ANY_EXTENDED_KEY_USAGE = ObjectIdentifier(oidString: "2.5.29.37.0")
    
}
