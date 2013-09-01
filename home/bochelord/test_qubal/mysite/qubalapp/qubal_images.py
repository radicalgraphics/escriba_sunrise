#
# Qubalapp v0.1
# Library where thumbnails are generated
# (c)2013 Radical Graphics Studios
from imagekit import ImageSpec
from imagekit.processors import ResizeToFill


class Thumbnail50x50(ImageSpec):
    
    processors = [ResizeToFill(50, 50)]
    format = 'JPEG'
    options = {'quality': 100}
    


class Thumbnail100x100(ImageSpec):
    
    processors = [ResizeToFill(100, 100)]
    format = 'JPEG'
    options = {'quality': 100}


class Thumbnail150x150(ImageSpec):
    
    processors = [ResizeToFill(150, 150)]
    format = 'JPEG'
    options = {'quality': 100}
    

class Thumbnail30x30(ImageSpec):
    
    processors = [ResizeToFill(30, 30)]
    format = 'JPEG'
    options = {'quality': 100}
    

class Thumbnail220x220(ImageSpec):
    
    processors = [ResizeToFill(220, 220)]
    format = 'JPEG'
    options = {'quality': 100}