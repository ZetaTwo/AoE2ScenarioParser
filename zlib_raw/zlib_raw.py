import zlib

class ZlibRaw(object):
    def __init__(self):
        pass

    def decode(self, data):
        return zlib.decompress(data, -zlib.MAX_WBITS)
