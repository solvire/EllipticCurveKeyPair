//
//  mkcert.c
//  EllipticCurveKeyPairDemo
//
//  Created by moz on 8/13/17.
//  Copyright © 2017 Agens AS. All rights reserved.
//

#include "mkcert.h"

#include <stdio.h>
#include <stdlib.h>

#include <openssl/pem.h>
#include <openssl/conf.h>
#include <openssl/x509v3.h>
#ifndef OPENSSL_NO_ENGINE
#include <openssl/engine.h>
#endif
