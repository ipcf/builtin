package sha1

import syssha1 "crypto/sha1"

Sum :: {
	data:   bytes | string
	result: bytes
	result: syssha1.Sum(data)
}
