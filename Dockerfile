FROM nodeos/base

MAINTAINER YOUR_NAME nickbabenko@me.com

ENV HOME /root
ENV PATH /root/bin:/usr/bin:/usr/sbin:/bin:/sbin

# Use `init` to boot the system
ENTRYPOINT ["init"]

# Run `nsh` on boot
CMD ["nsh"]

RUN npm install https://github.com/nickbabenko/nodeos-popcorntime/tarball/master
RUN ./node_modules/popcorn-time/make_popcorn.sh