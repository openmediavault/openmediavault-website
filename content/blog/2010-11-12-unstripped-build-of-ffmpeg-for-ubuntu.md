---
title: "Unstripped build of FFmpeg for Ubuntu"
date: 2010-11-12T22:23:08
slug: "unstripped-build-of-ffmpeg-for-ubuntu"
categories: ["Ubuntu"]
---

If you want to enable various codecs in FFmpeg that are not supported by the official Ubuntu package (e.g. H.264) then this short howto will help you to build your own package quickly. I’m using the official package sources to make it as easy as possible and to ensure to do not break something. Make sure you have the [Multiverse and Universe repositories](https://help.ubuntu.com/community/Repositories/Ubuntu) enabled.

Create a new directory

```
mkdir ffmpeg-unstripped
cd ffmpeg-unstripped
```

Install some additional packages, especially the codecs you want to add to the FFmpeg package

```bash
sudo apt-get install build-essential libxvidcore-dev libx264-dev libfaac-dev libmp3lame-dev
```

Have a look into the debian/confflags file to find out additional packages that can be added also.

Next the packages required by the offical FFmpeg package are downloaded, also the source package itself.

```bash
sudo apt-get build-dep ffmpeg
apt-get source ffmpeg
```

Now its time to build the package

```bash
cd ffmpeg-*
fakeroot debian/rules binary
```

Finally we can install and validate the result. Before it is necessary to remove a previously installed FFmpeg package.

```bash
sudo apt-get remove ffmpeg
sudo dpkg -i ../*.deb
ffmpeg -format
```
