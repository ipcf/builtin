package sha512

import syssha512 "crypto/sha512"

Sum512 :: {
	data:   bytes | string
	result: bytes
	result: syssha512.Sum512(data)
}

Sum384 :: {
	data:   bytes | string
	result: bytes
	result: syssha512.Sum384(data)
}

Sum512_224 :: {
	data:   bytes | string
	result: bytes
	result: syssha512.Sum512_224(data)
}

Sum512_256 :: {
	data:   bytes | string
	result: bytes
	result: syssha512.Sum512_256(data)
}
