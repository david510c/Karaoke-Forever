# Karaoke-Forever
Docker version of Karaoke Forever

Based on work done by 
https://github.com/bhj/karaoke-forever

For X86:
$ docker run -d -p 80:80 -v /mnt/yourcdg:/cdgfiles david510c/karaoke-forever

For Raspberry Pi:
$ docker run -d -p 80:80 -v /mnt/yourcdg:/cdgfiles david510c/karaoke-forever:rpi

Change /mnt/yourcdg to the location of your own cdg files

Access http://yourserver and sing!
