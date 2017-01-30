#! /usr/bin/env python
"""
Images in B/W, Greyscale, 16, 216, and 256 ANSI colors, delivered to STDOUT.

Demo: curl https://raw.githubusercontent.com/rupa/ansiimg/master/demo.ansi
"""

import os
import sys

from itertools import product
from textwrap import wrap

from numpy import array, reshape
from PIL import Image, ImageFont, ImageDraw
from scipy.cluster.vq import vq

module_path = os.path.dirname(os.path.abspath(__file__))

# 16 colors
SYSTEM = [
    (0x00, 0x00, 0x00),
    (0x80, 0x00, 0x00),
    (0x00, 0x80, 0x00),
    (0x80, 0x80, 0x00),
    (0x00, 0x00, 0x80),
    (0x80, 0x00, 0x80),
    (0x00, 0x80, 0x80),
    (0xc0, 0xc0, 0xc0),
    (0x80, 0x80, 0x80),
    (0xff, 0x00, 0x00),
    (0x00, 0xff, 0x00),
    (0xff, 0xff, 0x00),
    (0x00, 0x00, 0xff),
    (0xff, 0x00, 0xff),
    (0x00, 0xff, 0xff),
    (0xff, 0xff, 0xff),
]
# Heres' how the 216 rgb colors are mapped
RGB_PARTITIONS = (0x00, 0x5f, 0x87, 0xaf, 0xd7, 0xff)
RGB = list(product(RGB_PARTITIONS, repeat=3))
# (8, 8, 8) ... (238, 238, 238) in increments of 10
GREYSCALE = [(i, i, i) for i in range(0x08, 0xef)[0::10]]

ANSI_RGB = list(enumerate(SYSTEM + RGB + GREYSCALE))
RGB_TO_ANSI = {rgb: i for i, rgb in ANSI_RGB}
ANSI_TO_RGB = {i: rgb for i, rgb in ANSI_RGB}
ANSI_TO_HEX = {
    ansi: ''.join('{0:02x}'.format(i) for i in ANSI_TO_RGB[ansi])
    for ansi in ANSI_TO_RGB
}

# 16 color SYSTEM palette, in different order
IRC = [                 # irssi
    (0xff, 0xff, 0xff), # white
    (0x00, 0x00, 0x00), # black
    (0x00, 0x00, 0xff), # blue
    (0x00, 0xff, 0x00), # green
    (0x80, 0x00, 0x00), # light red
    (0xff, 0x00, 0x00), # red
    (0xff, 0x00, 0xff), # magenta (purple)
    (0x80, 0x80, 0x00), # orange
    (0xff, 0xff, 0x00), # yellow
    (0x00, 0x80, 0x00), # light green
    (0x00, 0xff, 0xff), # cyan
    (0x00, 0x80, 0x80), # light cyan
    (0x00, 0x00, 0x80), # light blue
    (0x80, 0x00, 0x80), # light magenta
    (0x80, 0x80, 0x80), # grey
    (0xc0, 0xc0, 0xc0), # light grey

]
# RGB values from http://www.mirc.com/colors.html
MIRC = [
    (0xff, 0xff, 0xff),
    (0x00, 0x00, 0x00),
    (0x00, 0x00, 0x7f),
    (0x00, 0x93, 0x00),
    (0xff, 0x00, 0x00),
    (0x7f, 0x00, 0x00),
    (0x9c, 0x00, 0x9c),
    (0xfc, 0x7f, 0x00),
    (0xff, 0xff, 0x00),
    (0x00, 0xfc, 0x00),
    (0x00, 0x93, 0x93),
    (0x00, 0xff, 0xff),
    (0x00, 0x00, 0xfc),
    (0xff, 0x00, 0xff),
    (0x7f, 0x7f, 0x7f),
    (0xd2, 0xd2, 0xd2),
]
RGB_TO_IRC = {rgb: i for i, rgb in enumerate(IRC)}
RGB_TO_MIRC = {rgb: i for i, rgb in enumerate(MIRC)}

PALETTE_BW = array(((0, 0, 0), (255, 255, 255)))
PALETTE_16 = array(SYSTEM)
PALETTE_IRC = array(IRC)
PALETTE_MIRC = array(MIRC)
PALETTE_GREYSCALE = array(GREYSCALE + [(0, 0, 0), (255, 255, 255)])
PALETTE_216 = array(RGB)
PALETTE_256 = array(SYSTEM + RGB + GREYSCALE)
PALETTES = {
    '16': PALETTE_16,
    '216': PALETTE_216,
    '256': PALETTE_256,
    'bw': PALETTE_BW,
    'greyscale': PALETTE_GREYSCALE,
    'grayscale': PALETTE_GREYSCALE,
    'irc': PALETTE_IRC,
    'mirc': PALETTE_MIRC,
}

def ansi_pixel(rgb, close=False, text=False, nl=False):
    if rgb is None:
        if close is True:
            return '\033[m\n'
        return '\n'
    return '\033[48;5;{0:02}m  {1}{2}{3}{4}'.format(
        RGB_TO_ANSI[rgb],
        '\033[m' if close is True else '',
        ' ' if text else '',
        text if text else '',
        '\n' if nl is True else ''
    )

def html_pixel(rgb, close=False, text=False, nl=False):
    """
    Assumes monopace font. close is unused, for argument compatibility.
    """
    if rgb is None:
        return '<br>\n'
    return (
        '<span style="background-color: #{0};">&nbsp;&nbsp;</span>{1}{2}{3}'
        .format(
            ''.join('{0:02x}'.format(i) for i in rgb),
            ' ' if text else '',
            text if text else '',
            '<br>\n' if nl is True else ''
        )
    )

def irc_pixel(rgb, close=False, text=False, nl=False):
    if rgb is None:
        return '\n'
    return '\x03{0:02},{0:02}  '.format(RGB_TO_IRC[rgb])

def mirc_pixel(rgb, close=False, text=False, nl=False):
    if rgb is None:
        return '\n'
    return '\x03{0:02},{0:02}  '.format(RGB_TO_MIRC[rgb])

def quantize(img, palette):
    """
    Quantize an image with a given color palette. Channels must match.
    """
    img = array(img)
    height, width, channels = img.shape
    # reshape to array of points
    pixels = reshape(img, (height * width, channels))
    # quantize
    qnt, _ = vq(pixels, palette)
    # reshape back to image
    return palette[reshape(qnt, (height, width))]

def extract_frames(filename):
    frame = Image.open(filename)
    n = 0
    while True:
        try:
            frame.seek(n)
        except EOFError:
            return
        yield frame
        n += 1

def prepare_img(filename, max_size, text=''):
    """
    Shrink image and/or add text
    """
    img = Image.open(filename)
    img.thumbnail(max_size, Image.ANTIALIAS)
    width, height = img.size

    draw = ImageDraw.Draw(img)
    fontsize = int(width / 10.0) + 1
    fontrgba = (0, 0, 0, 0)
    para = wrap(text, width=8)
    try:
        font = ImageFont.truetype(
            os.path.join(module_path, 'Impact.ttf'), fontsize
        )
    except IOError:
        font = ImageFont.load_default()

    current_h, pad = 0, 0 # (height - 2 * fontsize)
    for line in para:
        w, h = draw.textsize(line, font=font)
        draw.text(((width - w) / 2, current_h), line, fontrgba, font=font)
        current_h += h + pad

    return img, width, height

def img_to_ansi(filename, output, max_size, alpha, palettes, text=''):
    img, width, height = prepare_img(filename, max_size, text)

    bands = img.getbands()
    if bands == ('P',):
        # convert to RGBA so we get alpha
        bands = ('R', 'G', 'B', 'A')
        img = img.convert(''.join(bands))
    if bands == ('R', 'G', 'B', 'A'):
        # convert RGBA to RGB
        img2 = Image.new('RGB', (width, height), (alpha, alpha, alpha))
        img2.paste(img, mask=img.split()[3]) # 3 is the alpha channel
        img = img2
    elif bands == ('R', 'G', 'B'):
        # RGB is all set
        pass
    else:
        raise Exception('Weird image bands: {0}'.format(bands))

    for palette in palettes:
        pixels = quantize(img, palette)
        for x in xrange(height):
            for y in xrange(width):
                rgb = tuple(pixels[x][y])
                yield output(rgb)
            yield output(None, close=True)

def colorcubes(output):
    """
    Pretty.
    """
    for rgb in SYSTEM:
        yield output(rgb, close=True)
    yield output(None)
    for idx, rgb in enumerate(RGB):
        yield output(rgb, close=True)
        if (idx + 1) % 36 == 0:
            yield output(None)
    for rgb in GREYSCALE:
        yield output(rgb, close=True)
    yield output(None)

def ansicubes(ansis, output):
    """
    Show colorcube and values.
    """
    for ansi in ansis:
        yield output(
            ANSI_TO_RGB[ansi],
            close=True,
            text='{0:02} {1} {2}'.format(
                ansi, ANSI_TO_RGB[ansi], ANSI_TO_HEX[ansi],
            ),
            nl=True
        )

def ansifiles(filenames, output, max_size, alpha, palettes, text=''):
    """
    Pretty (image) files.
    """
    for filename in filenames:
        chars = img_to_ansi(
            filename, output, max_size, alpha, palettes, text
        )
        try:
            for char in chars:
                yield char
        except IOError as ex:
            yield '{0}\n'.format(ex.message)

def main():
    import argparse
    import os
    import struct
    from fcntl import ioctl
    from termios import TIOCGWINSZ

    def terminal_size(fd=1):
        try:
            return struct.unpack('hh', ioctl(fd, TIOCGWINSZ, '1234'))
        except:
            try:
                return (os.environ['LINES'], os.environ['COLUMNS'])
            except:
                return (25, 80)

    def valid_ansi(arg):
        if arg.isdigit() and 0 <= int(arg) <= 255:
            return int(arg)
        raise argparse.ArgumentTypeError('0-255 required')

    outputs = {
        'ansi': ansi_pixel,
        'html': html_pixel,
        'irc': irc_pixel,
        'mirc': mirc_pixel,
    }

    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        '--alpha',
        type=valid_ansi,
        default=0,
        help='alpha value for RGBA images (0-255, default %(default)s)'
    )
    parser.add_argument(
        '--ansi',
        nargs='*',
        metavar='COLOR',
        type=valid_ansi,
        help='info for ANSI color (0-255)'
    )
    parser.add_argument('--colors', action='store_true', help='color cubes')
    parser.add_argument(
        '-o', '--output', default='ansi', choices=outputs.keys()
    )
    parser.add_argument(
        '-p', '--palette',
        choices=sorted(PALETTES.keys()),
        action='append',
        help='palette(s) to use',
    ),
    parser.add_argument(
        '-t', '--text', default='', help='(short) text to overlay'
    )
    parser.add_argument(
        '-w', '--width',
        type=int,
        default=terminal_size()[1],
        help='default is terminal width (%(default)s)'
    )
    parser.add_argument('files', nargs='*', metavar='file', help='image files')
    args = parser.parse_args()

    if args.palette is None:
        args.palette = [PALETTE_256]
    else:
        args.palette = [PALETTES[x] for x in args.palette]

    output = outputs[args.output]

    if args.colors:
        for x in colorcubes(output):
            sys.stdout.write(x)
    elif args.ansi:
        for x in ansicubes(args.ansi, output):
            sys.stdout.write(x)
    elif args.files:
        # divide width by 2 as each char is 2x1px, make height huge
        max_size = (args.width / 2, sys.maxint)
        for x in ansifiles(
            args.files,
            output,
            max_size,
            args.alpha,
            args.palette,
            args.text
        ):
            sys.stdout.write(x)
    else:
        parser.print_usage()

    # Don't complain about a pipe
    try:
        sys.stdout.close()
    except IOError:
        pass

if __name__ == '__main__':
    main()
