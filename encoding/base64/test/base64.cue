package test

import "github.com/ipcf/t"

import encoding "github.com/ipcf/builtin/encoding/base64"

import sysencoding "encoding/base64"

test: t.Test & {
	describe: "builtin base64 package": {
		describe: "EncodedLen": {
			subject: (encoding.EncodedLen & {n: 5}).result
			it: "should produce the correct len": {
				assert: valid: value: 8
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.EncodedLen(null, 5)
			}
		}
	}
}

test: t.Test & {
	describe: "builtin base64 package": {
		describe: "DecodedLen": {
			subject: (encoding.DecodedLen & {n: 5}).result
			it: "should produce the correct len": {
				assert: valid: value: 3
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.DecodedLen(null, 5)
			}
		}
	}
}

test: t.Test & {
	describe: "builtin base64 package": {
		describe: "Encode": {
			subject: (encoding.Encode & {src: 'abc123'}).result
			it: "should produce the correct len": {
				assert: valid: value: "YWJjMTIz"
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.Encode(null, 'abc123')
			}
		}
	}
}

test: t.Test & {
	describe: "builtin base64 package": {
		describe: "Decode": {
			subject: (encoding.Decode & {s: "YWJjMTIz"}).result
			it: "should produce the correct len": {
				assert: valid: value: 'abc123'
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.Decode(null, "YWJjMTIz")
			}
		}
	}
}
