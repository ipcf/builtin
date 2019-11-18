package test

import "github.com/ipcf/t"

import crypto "github.com/ipcf/builtin/crypto/sha1"

import syscrypto "crypto/sha1"

test: t.Test & {
	describe: "builtin md5 package": {
		describe: "data as bytes": {
			subject: (crypto.Sum & {data: 'abc123'}).result
			it: "should sum the correct bytes": {
				assert: valid: value: 'cgčѓ\xd5n\xa7\xb0\xba\xad%\xb1\x94U\xe5)\xf5\xee'
			}
		}
		describe: "data as a string": {
			subject: (crypto.Sum & {data: "abc123"}).result
			it: "should sum the correct bytes": {
				assert: valid: value: 'cgčѓ\xd5n\xa7\xb0\xba\xad%\xb1\x94U\xe5)\xf5\xee'
			}
		}
		describe: "builtin vs sys": {
			subject: (crypto.Sum & {data: "abc123"}).result
			it: "should sum the correct bytes": {
				assert: valid: value: syscrypto.Sum("abc123")
			}
		}
	}
}
