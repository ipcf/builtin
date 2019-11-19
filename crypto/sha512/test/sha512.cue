package test

import "github.com/ipcf/t"

import crypto "github.com/ipcf/builtin/crypto/sha512"

import syscrypto "crypto/sha512"

test: t.Test & {
	describe: "builtin sha512 package": {
		describe: "Sum512": {
			describe: "data as bytes": {
				subject: (crypto.Sum512 & {data: 'abc123'}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '''
        \xc7\v]\xd9\xeb\xfboQНA2\xb7\x17\f\x9d u
        xR\xf0\x06\x80\xf6VX\xf01\x0e\x81\x00V\xe6v<4ɠ\v\x0e\x94\x00v\xf5D\x95\xc1i\xfc#\x02\xcc\xeb1 9\'\x1cCF\x95\a\xdc
        '''
				}
			}
			describe: "data as a string": {
				subject: (crypto.Sum512 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '''
        \xc7\v]\xd9\xeb\xfboQНA2\xb7\x17\f\x9d u
        xR\xf0\x06\x80\xf6VX\xf01\x0e\x81\x00V\xe6v<4ɠ\v\x0e\x94\x00v\xf5D\x95\xc1i\xfc#\x02\xcc\xeb1 9\'\x1cCF\x95\a\xdc
        '''
				}
			}
			describe: "builtin vs sys": {
				subject: (crypto.Sum512 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: syscrypto.Sum512("abc123")
				}
			}
		}
	}
}

test: t.Test & {
	describe: "builtin sha512 package": {
		describe: "Sum384": {
			describe: "data as bytes": {
				subject: (crypto.Sum384 & {data: 'abc123'}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '\xa3\x1dy\x89\x19\x19\xca\xd2O2dG\x9dv\x88OX\x1b\xee2\xe8gx7=\xb3\xa1$ޗ]\xd8j@\xfc\u007f9\x9b3\x113\xb2\x81\xabK\x11\xa6\xca'
				}
			}
			describe: "data as a string": {
				subject: (crypto.Sum384 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '\xa3\x1dy\x89\x19\x19\xca\xd2O2dG\x9dv\x88OX\x1b\xee2\xe8gx7=\xb3\xa1$ޗ]\xd8j@\xfc\u007f9\x9b3\x113\xb2\x81\xabK\x11\xa6\xca'
				}
			}
			describe: "builtin vs sys": {
				subject: (crypto.Sum384 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: syscrypto.Sum384("abc123")
				}
			}
		}
	}
}

test: t.Test & {
	describe: "builtin sha512 package": {
		describe: "Sum512_224": {
			describe: "data as bytes": {
				subject: (crypto.Sum512_224 & {data: 'abc123'}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '\x0e\x12\x91\xaa\xaba\xcf\xc2T\x95\xd7\xd5k\x94KA\xb0\xc8E0\xb0\xdd\xc2\x1e\fW\xd1\xfa'
				}
			}
			describe: "data as a string": {
				subject: (crypto.Sum512_224 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '\x0e\x12\x91\xaa\xaba\xcf\xc2T\x95\xd7\xd5k\x94KA\xb0\xc8E0\xb0\xdd\xc2\x1e\fW\xd1\xfa'
				}
			}
			describe: "builtin vs sys": {
				subject: (crypto.Sum512_224 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: syscrypto.Sum512_224("abc123")
				}
			}
		}
	}
}

test: t.Test & {
	describe: "builtin sha512 package": {
		describe: "Sum512_256": {
			describe: "data as bytes": {
				subject: (crypto.Sum512_256 & {data: 'abc123'}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '\x8f\b\\\x89>\x15\xd8\xe5`e\xf4{\xb5ɋ\x12\xf5|\xef8f\xab5i\xee\xfd2n\xd6P\x80\xc1'
				}
			}
			describe: "data as a string": {
				subject: (crypto.Sum512_256 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: '\x8f\b\\\x89>\x15\xd8\xe5`e\xf4{\xb5ɋ\x12\xf5|\xef8f\xab5i\xee\xfd2n\xd6P\x80\xc1'
				}
			}
			describe: "builtin vs sys": {
				subject: (crypto.Sum512_256 & {data: "abc123"}).result
				it: "should sum the correct bytes": {
					assert: valid: value: syscrypto.Sum512_256("abc123")
				}
			}
		}
	}
}
