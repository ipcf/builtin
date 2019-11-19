package test

import "github.com/ipcf/t"

import crypto "github.com/ipcf/builtin/crypto/md5"

import syscrypto "crypto/md5"

test: t.Test & {
	describe: "builtin md5 package": {
		describe: "data as bytes": {
			subject: (crypto.Sum & {data: 'abc123'}).result
			it: "should sum the correct bytes": {
				assert: valid: value: '\xe9\x9a\x18\xc4(\xcb8\xd5\xf2`\x856x\x92.\x03'
			}
		}
		describe: "data as a string": {
			subject: (crypto.Sum & {data: "abc123"}).result
			it: "should sum the correct bytes": {
				assert: valid: value: '\xe9\x9a\x18\xc4(\xcb8\xd5\xf2`\x856x\x92.\x03'
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
