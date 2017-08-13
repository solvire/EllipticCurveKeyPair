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
    var SUBJECT_DIRECTORY_ATTRIBUTES = ObjectIdentifier(oidString: "2.5.29.9")
    var SUBJECT_KEY_IDENTIFIER = ObjectIdentifier(oidString: "2.5.29.14")
    var KEY_USAGE = ObjectIdentifier(oidString: "2.5.29.15")
    var SUBJECT_ALTERNATIVE_NAME = ObjectIdentifier(oidString: "2.5.29.17")
    var ISSUER_ALTERNATIVE_NAME = ObjectIdentifier(oidString: "2.5.29.18")
    var BASIC_CONSTRAINTS = ObjectIdentifier(oidString: "2.5.29.19")
    var NAME_CONSTRAINTS = ObjectIdentifier(oidString: "2.5.29.30")
    var CRL_DISTRIBUTION_POINTS = ObjectIdentifier(oidString: "2.5.29.31")
    var CERTIFICATE_POLICIES = ObjectIdentifier(oidString: "2.5.29.32")
    var POLICY_MAPPINGS = ObjectIdentifier(oidString: "2.5.29.33")
    var AUTHORITY_KEY_IDENTIFIER = ObjectIdentifier(oidString: "2.5.29.35")
    var POLICY_CONSTRAINTS = ObjectIdentifier(oidString: "2.5.29.36")
    var EXTENDED_KEY_USAGE = ObjectIdentifier(oidString: "2.5.29.37")
    var FRESHEST_CRL = ObjectIdentifier(oidString: "2.5.29.46")
    var INHIBIT_ANY_POLICY = ObjectIdentifier(oidString: "2.5.29.54")
    var AUTHORITY_INFORMATION_ACCESS = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.1.1")
    var SUBJECT_INFORMATION_ACCESS = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.1.11")
    var OCSP_NO_CHECK = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.48.1.5")
    var CRL_NUMBER = ObjectIdentifier(oidString: "2.5.29.20")
    var PRECERT_SIGNED_CERTIFICATE_TIMESTAMPS = ObjectIdentifier(oidString: "1.3.6.1.4.1.11129.2.4.2")

}

public class NameOID {
    // represents the Named OID
    var COMMON_NAME = ObjectIdentifier(oidString: "2.5.4.3")
    var COUNTRY_NAME = ObjectIdentifier(oidString: "2.5.4.6")
    var LOCALITY_NAME = ObjectIdentifier(oidString: "2.5.4.7")
    var STATE_OR_PROVINCE_NAME = ObjectIdentifier(oidString: "2.5.4.8")
    var STREET_ADDRESS = ObjectIdentifier(oidString: "2.5.4.9")
    var ORGANIZATION_NAME = ObjectIdentifier(oidString: "2.5.4.10")
    var ORGANIZATIONAL_UNIT_NAME = ObjectIdentifier(oidString: "2.5.4.11")
    var SERIAL_NUMBER = ObjectIdentifier(oidString: "2.5.4.5")
    var SURNAME = ObjectIdentifier(oidString: "2.5.4.4")
    var GIVEN_NAME = ObjectIdentifier(oidString: "2.5.4.42")
    var TITLE = ObjectIdentifier(oidString: "2.5.4.12")
    var GENERATION_QUALIFIER = ObjectIdentifier(oidString: "2.5.4.44")
    var X500_UNIQUE_IDENTIFIER = ObjectIdentifier(oidString: "2.5.4.45")
    var DN_QUALIFIER = ObjectIdentifier(oidString: "2.5.4.46")
    var PSEUDONYM = ObjectIdentifier(oidString: "2.5.4.65")
    var USER_ID = ObjectIdentifier(oidString: "0.9.2342.19200300.100.1.1")
    var DOMAIN_COMPONENT = ObjectIdentifier(oidString: "0.9.2342.19200300.100.1.25")
    var EMAIL_ADDRESS = ObjectIdentifier(oidString: "1.2.840.113549.1.9.1")
    var JURISDICTION_COUNTRY_NAME = ObjectIdentifier(oidString: "1.3.6.1.4.1.311.60.2.1.3")
    var JURISDICTION_LOCALITY_NAME = ObjectIdentifier(oidString: "1.3.6.1.4.1.311.60.2.1.1")
    var JURISDICTION_STATE_OR_PROVINCE_NAME = ObjectIdentifier(oidString: "1.3.6.1.4.1.311.60.2.1.2")
    var BUSINESS_CATEGORY = ObjectIdentifier(oidString: "2.5.4.15")
    var POSTAL_ADDRESS = ObjectIdentifier(oidString: "2.5.4.16")
    var POSTAL_CODE = ObjectIdentifier(oidString: "2.5.4.17")
}

public class SignatureAlgorithmOID {

    var RSA_WITH_MD5 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.4")
    var RSA_WITH_SHA1 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.5")
    
    // This is an alternate OID for RSA with SHA1 that is occasionally seen
    var _RSA_WITH_SHA1 = ObjectIdentifier(oidString: "1.3.14.3.2.29")
    var RSA_WITH_SHA224 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.14")
    var RSA_WITH_SHA256 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.11")
    var RSA_WITH_SHA384 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.12")
    var RSA_WITH_SHA512 = ObjectIdentifier(oidString: "1.2.840.113549.1.1.13")
    var ECDSA_WITH_SHA1 = ObjectIdentifier(oidString: "1.2.840.10045.4.1")
    var ECDSA_WITH_SHA224 = ObjectIdentifier(oidString: "1.2.840.10045.4.3.1")
    var ECDSA_WITH_SHA256 = ObjectIdentifier(oidString: "1.2.840.10045.4.3.2")
    var ECDSA_WITH_SHA384 = ObjectIdentifier(oidString: "1.2.840.10045.4.3.3")
    var ECDSA_WITH_SHA512 = ObjectIdentifier(oidString: "1.2.840.10045.4.3.4")
    var DSA_WITH_SHA1 = ObjectIdentifier(oidString: "1.2.840.10040.4.3")
    var DSA_WITH_SHA224 = ObjectIdentifier(oidString: "2.16.840.1.101.3.4.3.1")
    var DSA_WITH_SHA256 = ObjectIdentifier(oidString: "2.16.840.1.101.3.4.3.2")
   
}


public class ExtendedKeyUsageOID {
    // extended Key Usage OIDs

    var SERVER_AUTH = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.1")
    var CLIENT_AUTH = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.2")
    var CODE_SIGNING = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.3")
    var EMAIL_PROTECTION = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.4")
    var TIME_STAMPING = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.8")
    var OCSP_SIGNING = ObjectIdentifier(oidString: "1.3.6.1.5.5.7.3.9")
    var ANY_EXTENDED_KEY_USAGE = ObjectIdentifier(oidString: "2.5.29.37.0")

}
