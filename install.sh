#!/bin/bash -x

mkdir -p ~/bin
mkdir -p ~/.local/ffpreset
ln -s `pwd`/ts2enc ~/bin/
ln -s `pwd`/recorded_enc ~/bin/
ln -s `pwd`/ts2enc.ffpreset ~/.local/ffpreset/

export_count=`cat ~/.bash_profile | grep 'export PATH="$HOME/bin:$PATH"' | wc -l`
echo $export_count

if [ $export_count -eq 0 ]; then
	echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bash_profile
fi
echo "installed."
echo "execute to complete installation:"
echo "source ~/.bash_profile"
