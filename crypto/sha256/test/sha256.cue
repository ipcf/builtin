package test

import "github.com/ipcf/t"

import crypto "github.com/ipcf/builtin/crypto/sha256"

import syscrypto "crypto/sha256"

test: t.Test & {
	describe: "builtin sha256 package": {
		describe: "Sum224": {
			describe: "data as bytes": {
				subject: (crypto.Sum224 & {data: 'abc123'}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '\\i\xbbi\\\u009b\x93\xd6U᤻VVͦ$\b\rhotG~\xa0\x93I'
				}
			}
			describe: "data as a string": {
				subject: (crypto.Sum224 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '\\i\xbbi\\\u009b\x93\xd6U᤻VVͦ$\b\rhotG~\xa0\x93I'
				}
			}
			describe: "builtin vs sys": {
				subject: (crypto.Sum224 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: syscrypto.Sum224("abc123")
				}
			}
		}
		describe: "Sum256": {
			describe: "builtin md5 package": {
				describe: "data as bytes": {
					subject: (crypto.Sum256 & {data: 'abc123'}).result
					it: "should sum the correct bytes": {
						assert: valid: value: 'l\xa1=R\xcapȃ\xe0\xf0\xbb\x10\x1eBZ\x89\xe8bM\xe5\x1d\xb2\xd29%\x93\xafj\x84\x11\x80\x90'
					}
				}
				describe: "data as a string": {
					subject: (crypto.Sum256 & {data: "abc123"}).result
					it: "should sum the correct bytes": {
						assert: valid: value: 'l\xa1=R\xcapȃ\xe0\xf0\xbb\x10\x1eBZ\x89\xe8bM\xe5\x1d\xb2\xd29%\x93\xafj\x84\x11\x80\x90'
					}
				}
				describe: "builtin vs sys": {
					subject: (crypto.Sum256 & {data: "abc123"}).result
					it: "should sum the correct bytes": {
						assert: valid: value: syscrypto.Sum256("abc123")
					}
				}
			}
		}
	}
}
