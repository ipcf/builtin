package test

import "github.com/ipcf/t"

import encoding "github.com/ipcf/builtin/encoding/csv"

import sysencoding "encoding/csv"

test: t.Test & {
	describe: "builtin csv package": {
		describe: "Encode": {
			testValue = [["foo", "bar"], ["ban", "baz"]]
			subject: (encoding.Encode & {x: testValue}).result
			it: "should produce the correct len": {
				assert: valid: value: """
        foo,bar
        ban,baz
        
        """
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.Encode(testValue)
			}
		}
	}
}

test: t.Test & {
	describe: "builtin csv package": {
		describe: "Decode": {
			testValue = """
        foo,bar
        ban,baz
        
        """
			subject: (encoding.Decode & {r: testValue}).result
			it: "should produce the correct len": {
				assert: valid: value: [["foo", "bar"], ["ban", "baz"]]
			}
			it: "should produce the same len as the sys call": {
				assert: valid: value: sysencoding.Decode(testValue)
			}
		}
	}
}
