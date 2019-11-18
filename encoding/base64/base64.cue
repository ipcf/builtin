package base64

import sysbase64 "encoding/base64"

EncodedLen :: {
	encoding: null // currently only null is supported
	n:        int
	result:   int
	result:   sysbase64.EncodedLen(encoding, n)
}

DecodedLen :: {
	encoding: null // currently only null is supported
	n:        int
	result:   int
	result:   sysbase64.DecodedLen(encoding, n)
}

Encode :: {
	encoding: null // currently only null is supported
	src:      bytes | string
	result:   string
	result:   sysbase64.Encode(encoding, src)
}

Decode :: {
	encoding: null // currently only null is supported
	s:        bytes | string
	result:   bytes
	result:   sysbase64.Decode(encoding, s)
}
