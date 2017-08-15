//
//  mkcertBridge.h
//  EllipticCurveKeyPairDemo
//
//  Created by moz on 8/13/17.
//  Copyright © 2017 Agens AS. All rights reserved.
//

#ifndef mkcertBridge_h
#define mkcertBridge_h


#endif /* mkcertBridge_h */



@interface OpenSSLWrapper : NSObject

@property (strong, nonatomic) id _Nullable x509Req;

- (void) SSL_client_version;

@end

@interface MessageDigest5 : NSObject

+ (nonnull NSData *)hashValueForData:(nonnull NSData *)data;

@end
