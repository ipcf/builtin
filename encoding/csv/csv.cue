package csv

import syscsv "encoding/csv"

Encode :: {
	x: [...[...(string | bytes)]]
	result: string
	result: syscsv.Encode(x)
}

Decode :: {
	// the option on `r` is a work around to avoid and exception as cuelang
	// encoding package seem to get evaluated before value are concrete
	// r: bytes | string
	r?: _
	result: [...[...string]]
	result: syscsv.Decode(r)
}
