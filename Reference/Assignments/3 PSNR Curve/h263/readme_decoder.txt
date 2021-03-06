			      tmndecode
			      =========

		      Version 2.0, June 14, 1996

	  (C) Telenor R&D, Karl Olav Lillevold <kol@nta.no>

tmndecode is a decoder and player for H.263 bitstreams. It can display
the decoded sequence at 8, 16, and 24(32) bits colordepths in both X11
and Microsoft Win32 window systems. For QCIF resolutions the display
speed should be real-time on most systems.

tmndecode was originally based on mpeg2decode and mpeg2play. What is
left is the file organization, the io-routines and some of the
display- routines for X11.  mpeg2decode is (C) 1994, MPEG Software
Simulation Group and mpeg2play is (C) Stefan Eckart,
stefan@lis.e-technik.tu-muenchen.de.  Most of the 16 and 24(32) bit
colordepth routines are from mpeg_play, and are (C) 1995 Erik Corry.


Compatibility
=============

This H.263 decoder is believed to be compatible with the description
of the H.263 standard as of May 7, 1996. All the the negotiable coding
modes described in the standard are implemented: the Unrestricted
Motion Vector mode, the Syntax-based Arithmetic Coding mode, the
Advanced Prediction mode and the PB-frames mode. See the CHANGES file
for changes since the last version. See the TODO file for items not
included in this version.

An H.263 (TMN5) compatible encoder with the same modes (tmn) and some
sample bitstreams are also available from Telenor's ftp site
bonde.nta.no in /pub/tmn/software/.

TMN was the Test Model Near-term for the ITU-LBC group working towards
a standard for video telephony on normal analogue telephone lines.
This standard is called H.263.


Installation
============

This software should work on most 32 bit systems. I have tested it
with OSF/1, SunOS-4.1.3, Linux, and Windows 95/NT. Display works with
both X11 and Windows. Use Makefile to compile under Unix. 

Windows: The enclosed makefile tmndec.mak can be used with Visual
C++. If you use another compiler or makefile, define WINDOWS and
USE_TIME. If you can't get it to compile with a different Win32
compiler, I will probably not be able to help you.


Bitstreams encoded with older version than 1.6 of our encoder are no
longer decodable. 


Usage
=====

Usage:   tmndec {options} bitstream {outputfilename%d}

Options:

-vn  verbose output (n: level)
Instructs tmndecode to generate informative output about the sequence
to stdout. Increasing level (-v1, -v2) results in more detailed output.

-on output format 
              n=0 : YUV
              n=1 : SIF
              n=2 : TGA
              n=3 : PPM
              n=4 : X11 Display
              n=5 : YUV concatenated
              n=6 : Windows 95/NT display
    Use -o5 for the same format as the Telenor encoder uses.
    You have to choose one output format!

-q  disable warnings to stderr

-r  use double precision IDCT

-t  enable low level tracing

-x  interpolate pictures to double size before display
    (on Windows, maximize display window to get double size display)

-fn  frame rate in frames per second
     n=0  : as fast as possible
     n=99 : read frame rate from bitstream (default)

-l  loop sequence
    Setting this flag results in repeated display of the sequence.


Contact me at kol@nta.no if you have trouble using tmndecode or find
any bugs. For the latest information on new versions and H.263 docs,
check our WWW page at http://www.nta.no/brukere/DVC/.


CREDITS
=======

Juha Mustonen first included code for 24 bit colordepth. I changed
this with code for both 16 and 24 (32) bits written by Erik Corry, and
added my own routine for 24 bits packed mode. Juha then suggested
improvements and helped me test the new modes.

Patrick Mulroy and Wayne Ellis at BT Labs did most of the SAC work
included in version 1.4.

Anurag Bist at Rockwell had the idea and implementation outline for
double sized display.

Michael Third at Intel Architecture Labs wrote the first version of
the Windows display running in a separate thread.

--
Karl Olav Lillevold  <kol@nta.no>   -->  http://www.nta.no/brukere/kol/ 


