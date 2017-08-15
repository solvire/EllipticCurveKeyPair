//
//  BridgingHeader.m
//  EllipticCurveKeyPairDemo
//
//  Created by moz on 8/13/17.
//  Copyright © 2017 Agens AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OpenSSLWrapper.h"
#import <openssl/md5.h>

@implementation OpenSSLWrapper

- (void) SSL_client_version {
    
    NSLog(@"SSL_client_version Ran");
}

@end

@implementation MessageDigest5

- (NSData *)hashValueOfData:(NSData *)data
{
    MD5_CTX md5Ctx;
    unsigned char hashValue[MD5_DIGEST_LENGTH];

    if(!MD5_Init(&md5Ctx)) {

    }
    if (!MD5_Update(&md5Ctx, data.bytes, data.length)) {
        
    }
    if (!MD5_Final(hashValue, &md5Ctx)) {

    }
    
    return [NSData dataWithBytes:hashValue length:MD5_DIGEST_LENGTH];
}

@end
