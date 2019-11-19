package md5

import sysmd5 "crypto/md5"

Sum :: {
	data:   bytes | string
	result: bytes
	result: sysmd5.Sum(data)
}
