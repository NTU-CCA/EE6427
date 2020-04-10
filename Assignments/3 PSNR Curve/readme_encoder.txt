			        tmn
                                ===

		      Version 2.0, June 14, 1996

	(C) Telenor R&D, Karl Olav Lillevold <kol@nta.no>
				   

tmn is a very low bitrate video encoder producing H.263 bitstreams.

Compatibility
=============

This H.263 encoder is believed to be compatible with the description
of the H.263 standard as of May 7, 1996. All the the negotiable coding
modes described in the standard are implemented: the Unrestricted
Motion Vector mode, the Syntax-based Arithmetic Coding mode, the
Advanced Prediction mode and the PB-frames mode. See the CHANGES file
for changes since the last version. See the TODO file for items not
included in this version.
 
You can decode (and display) all bitstreams from this encoder with
tmndecode. Tmndecode is also available from Telenor's ftp site
bonde.nta.no in /pub/tmn/software. Use the same version of the decoder
as the encoder.

TMN was the Test Model Near-term for the ITU-LBC group working towards
a standard for video telephony on normal analogue telephone lines.
This standard is now called H.263. 


Installation
============

This software should work on most 32 bit systems. I have tested it
with OSF/1, SunOS-4.1.3, Linux, Win32 (Visual C++ 2.x/Windows NT/95).
To build the encoder with Visual C++ 2.x, start a new project of type
"console application", add all c-files to the project, and choose
"build".

You can change the default filenames in config.h to suit your
site. Check the Makefile for a couple of defines you can use to change
the coding behavior. These can also be defined in sim.h.


Usage
=====

tmn [options] -i <filename> [more options] 

tmn is controlled by options on the command line. The only required
parameter is '-i <filename>'. Typing just 'tmn -i <filename>' will
encode one image of the sequence 'filename' with every parameter set
at the default value. Change the defaults with the options below.

Options:
        -a <n> image to start at [0]
        -b <n> image to stop at [0]
        -x <n> coding format [3]
               n=1: SQCIF n=2: QCIF n=3: CIF n=4: 4CIF n=5: 16CIF
                   128x96   176x144  352x288   704x576  1408x1152
        -s <n> (0..15) integer pel search window [15]
        -q <n> (1..31) quantization parameter QP [10]
        -I <n> (1..31) QP for first frame [10]
        -r <n> target bitrate in bits/s, default is variable bitrate
           -R <n> start rate control after n% of sequence [0], or
           -R <f> target frame rate [10.00], depending on rate control mode
        -S <n> frames to skip between each encoded frame [2]
        -Z <n> reference frame rate (25 or 30 fps) [30.0]
        -O <n> frames skipped in original compared to reference frame rate [0]
        -e <n> original sequence has n bytes header [0]
        -g <n> insert sync after each n GOB (slice) [0]
               zero above means no extra syncs inserted
        -i <filename> original sequence [/b2/qcif/claire.qcif]
        -o <filename> reconstructed frames [/b2/kol/out.qcif]
        -B <filename> filename for bitstream [./stream.263]
        -w write difference image to file "./diff.qcif" [OFF]
        -m write repeated reconstructed frames to disk [OFF]
        -t write trace to tracefile trace.intra/trace [OFF]
        -D use unrestricted motion vector mode (annex D) [OFF]
        -E use syntax-based arithmetic coding (annex E) [OFF]
        -F use advanced prediction mode (annex F) [OFF]
        -G use PB-frames (annex G) [OFF]
        -Q <n> (0..3) BQUANT parameter [2]
        -h Prints simple help
        -H Prints advanced help

        Default filenames and other options in square brackets 
        are chosen in config.h

If you think there are many options, I agree with you, but that's the
way I want it. I don't like complicated read-at-run-time config
files. For complicated and many compressions, I use batch files.

This software could have used some more documentation. If you have
questions, please read the H.263 and TMN5 documents available from the
WWW page listed below, as well as the source code itself. If you still
have questions, please feel free to contact any of the persons listed
in the source code headers, or me.


File format
===========

The input (original) sequence format is as follows.
QCIF = 176x144 luma resolution with 4:1:1 chroma subsampling.

           176
     +-------------+
     |             |
     |     Y       | 144
     |             |
     |             |
     +-------------+
     |  U   |
     |  88  |72
     +------+
     |  V   |
     |  88  |72
     +------+

Each component is raster-scanned from the top left corner down to the
bottom right corner. The Y, U and V components are then concatenated
together for each frame. All frames in the sequence are finally
concatenated in one big file. This is directly read from disk into
memory (see io.c).	

The output file format is the same as the input format. All the
standard test sequences are available in this format from bonde.nta.no
in /pub/tmn/qcif_source/.

Contact me at kol@nta.no if you have trouble using this software or
find any bugs. For the latest information on new versions and H.263
docs, check our WWW page at http://www.nta.no/brukere/DVC/.


CREDITS
=======

Anurag Bist at Rockwell International did most of the TMN5 rate
control in version 1.1.

Patrick Mulroy and Wayne Ellis at BT Labs did most of the SAC work
included in version 1.4.

The bitstream routines and VLC functions in version 1.7 were written
by Robert Danielsen at Telenor R&D. They are based on ideas from the
MPEG-2 Software Simulation Group work. 


--
Karl Olav Lillevold  <kol@nta.no>   -->  http://www.nta.no/brukere/kol/ 

