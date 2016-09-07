#!/bin/bash
mplayer -ao null ./out.ogv  -vo jpeg:outdir=tmp
convert tmp/* -layers Optimize a.gif
rm -rf tmp
rm -f out.ogv
