package sha256

import syssha256 "crypto/sha256"

Sum256 :: {
	data:   bytes | string
	result: bytes
	result: syssha256.Sum256(data)
}

Sum224 :: {
	data:   bytes | string
	result: bytes
	result: syssha256.Sum224(data)
}
