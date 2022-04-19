=begin
carla.s@MacBook-Pro-de-carlas atom-ruby-testing % irb
irb(main):001:0> require 'image_optimizer'
=> true
irb(main):002:0> ImageOptimizer.new('/Users/carla.s/Documents/imagenes/OOBootcamp 2022-02-25.png', quality: 25).optimize
** Processing: /Users/carla.s/Documents/imagenes/OOBootcamp 2022-02-25.png
2810x1764 pixels, 4x8 bits/pixel, RGB+alpha
Reducing image to 3x8 bits/pixel, RGB
Stripping metadata...
            Input IDAT size = 4589682 bytes
Input file size = 4596984 bytes

Trying:
  zc = 9  zm = 9  zs = 0  f = 1         IDAT size = 3205497
zc = 9  zm = 9  zs = 0  f = 2         IDAT size = 2837379
zc = 9  zm = 8  zs = 0  f = 2         IDAT size = 2835091
zc = 9  zm = 9  zs = 0  f = 4         IDAT size = 2816763
zc = 9  zm = 8  zs = 0  f = 4         IDAT size = 2815529
zc = 9  zm = 9  zs = 1  f = 4         IDAT size = 2784161
zc = 9  zm = 9  zs = 1  f = 5         IDAT size = 2781879

Selecting parameters:
            zc = 9  zm = 9  zs = 1  f = 5         IDAT size = 2781879

Output IDAT size = 2781879 bytes (1807803 bytes decrease)
Output file size = 2781936 bytes (1815048 bytes = 39.48% decrease)

/Users/carla.s/Documents/imagenes/OOBootcamp 2022-02-25.png:
  conserving memory
read 2717KB file
made histogram...542213 colors found
selecting colors...6%
  selecting colors...43%
  selecting colors...87%
  selecting colors...100%
  moving colormap towards local minimum
eliminated opaque tRNS-chunk entries...0 entries transparent
mapped image to new colors...MSE=20.601 (Q=42)
writing 66-color image as OOBootcamp 2022-02-25.png
Quantized 1 image.
=> nil
irb(main):003:0> exit
=end

require 'image_optimizer'
ImageOptimizer.new('/Users/carla.s/Documents/imagenes/OOBootcamp 2022-02-25.png', quality: 25).optimize
