package hex

import syshex "encoding/hex"

EncodedLen :: {
	n:      int
	result: int
	result: syshex.EncodedLen(n)
}

DecodedLen :: {
	x:      int
	result: int
	result: syshex.DecodedLen(x)
}

Decode :: {
	s:      string | bytes
	result: bytes
	result: syshex.Decode(s)
}

Dump :: {
	data:   string | bytes
	result: string
	result: syshex.Dump(data)
}

Encode :: {
	x:      string | bytes
	result: string
	result: syshex.Encode(x)
}
