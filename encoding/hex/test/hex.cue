package test

import "github.com/ipcf/t"

import encoding "github.com/ipcf/builtin/encoding/hex"

import sysencoding "encoding/hex"

test: t.Test & {
	describe: "builtin hex package": {
		describe: "EncodedLen": {
			testValue = 5
			subject: (encoding.EncodedLen & {n: testValue}).result
			it: "should produce the correct len": {
				assert: valid: value: 10
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.EncodedLen(testValue)
			}
		}
	}
}

test: t.Test & {
	describe: "builtin hex package": {
		describe: "DecodedLen": {
			testValue = 10
			subject: (encoding.DecodedLen & {x: testValue}).result
			it: "should produce the correct len": {
				assert: valid: value: 5
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.DecodedLen(testValue)
			}
		}
	}
}

test: t.Test & {
	describe: "builtin hex package": {
		describe: "Decode": {
			testValue = "ff"
			subject: (encoding.Decode & {s: testValue}).result
			it: "should produce the correct len": {
				assert: valid: value: '\xff'
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.Decode(testValue)
			}
		}
	}
}

test: t.Test & {
	describe: "builtin hex package": {
		describe: "Dump": {
			testValue = '\xff'
			subject: (encoding.Dump & {data: testValue}).result
			it: "should produce the correct len": {
				assert: valid: value: """
        00000000  ff                                                |.|

        """
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.Dump(testValue)
			}
		}
	}
}

test: t.Test & {
	describe: "builtin hex package": {
		describe: "Encode": {
			testValue = '\xff'
			subject: (encoding.Encode & {x: testValue}).result
			it: "should produce the correct len": {
				assert: valid: value: "ff"
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.Encode(testValue)
			}
		}
	}
}
