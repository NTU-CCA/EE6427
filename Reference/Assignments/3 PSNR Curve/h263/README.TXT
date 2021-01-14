H.263 Simulator Win32 Executables v2.0
======================================

Introduction
------------
These executables were made available for those without a suitable
Win32 compiler. They are NOT supported! If you have trouble using
them, read all the readme-files. Then study the web-pages at
http://www.nta.no/brukere/DVC/, and look for more information on
the standard itself. Get the source code. Study the source code.
Then, if you still have trouble, feel free to contact me, and I 
will be happy to help you.

These executables were compiled from the source code version 2.0 of
the Telenor H.263 simulator, available via anonymous ftp from
bonde.nta.no in /pub/tmn/software. 

Included files in this zip-file:
--------------------------------
tmn.exe            : H.263 encoder executable (console app)
tmndec.exe         : H.263 decoder executable 
                     (console app, but with display)

readme.txt         : this file
readme_decoder.txt : decoder readme (readme_d.txt if you use DOS pkunzip)
readme_encoder.txt : encoder readme (readme_e.txt if you use DOS pkunzip)

20kbit.263         : QCIF test sequence encoded at 20 kbit/sec,
                     variable frame rate
15fps.263          : QCIF self captured sequence encoded at 15 fps,
                     variable bit rate
*.log              : encoding log files for the bitstreams


Both bitstreams use coding options Advanced Prediction mode, 
and PB-frames mode. AP mode because this reduces blocking artifacts,
PB-frames mode, beacuse motion is low.

Test
----
To test the decoder, try "tmndec -o6 20kbit.263". A window with
the decoded images should pop up. "tmndec" alone will give you 
a short list of options.

To test the encoder, you need to get some raw material of the
correct format (SQCIF, QCIF, CIF, 4CIF, or 16CIF). QCIF test
sequences are available via anonymous ftp from bonde.nta.no
in /pub/tmn/qcif_source.

Then type "tmn -h" for basic usage, or "tmn -H" for advanced usage.

The sample bitstreams were encoded with these options:
20kbit.263: tmn -i claire.qcif -b 299 -r 20000 -R 10 -F -G -B 20kbit.263
15fps.263:  tmn -i capture.qcif -b 39 -F -G -I 8 -S 0 -O 1 -B 15fps.263


Read "readme_encoder.txt", and "readme_decoder.txt" for more 
information on the encoder and decoder, respectively.



Enjoy!

6/14/96 Karl O. Lillevold
<kol@nta.no>
<klillevo@ibeam.jf.intel.com>

