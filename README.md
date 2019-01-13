# ts2enc

MPEG2-TS用のFFmpeg H.264エンコードスクリプトを作りました | 自分に負けないラボラトリー
https://www.jifu-labo.net/2017/02/h264_encode/

# installation

```
su -
./install.sh
```

# usage

## basic

```
ts2enc.pl input.ts output.mp4
```

## optional

```
ts2enc.pl [options] input.ts output.mp4
ts2enc.pl input.ts [options] output.mp4
ts2enc.pl input.ts output.mp4 [options]
```
# option
- -quality / -q 0~51
- -size / -s 
- -aspect / -s
- -preset / -p default : /usr/local/etc/ts2enc.ffpreset
- -tune : film / animation / grain
- -interval / -i : 
- -copy : 
- -speed : 0.5~2.0
- -mono : main / sub / both
- -multi
- -crop : width:height:x:y
- -vol : multipul number or xxdB
- -two : 2-pass encode
- -vbr : 
