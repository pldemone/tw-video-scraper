#################################################################################
# tw-video-scrapper makefile                                                    #
#################################################################################
#                                                                               #
# WARRANTY DISCLAIMER:                                                          #
#                                                                               #
# Redistribution and use in source and binary forms, with or without            #
# modification, are permitted provided that the following conditions are met:   #
#                                                                               #
#    * Redistributions of source code must retain the above copyright notice ,  #
#      this list of conditions and the following disclaimer.                    #
#                                                                               #
#    * Redistributions in binary form must reproduce the above copyright        #
#      notice, this list of conditions and the following disclaimer in the      #
#      documentation and/or other materials provided with the distribution.     #
#                                                                               #
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS           #
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT             #
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR         #
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT          #
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,         #
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED      #
# TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR        #
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF        #
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING          #
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS            #
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.                  #
#                                                                               #
#################################################################################

PREFIX		= /opt/twonky

install:
	mkdir -p $(PREFIX)/cgi-bin/
	install -m 0755 -o root -g root tw-video-scraper.py $(PREFIX)/cgi-bin/
	install -m 0644 -o root -g root python.location $(PREFIX)/cgi-bin/
	install -m 0644 -o root -g root python-tw-video-scraper.desc $(PREFIX)/cgi-bin/

uninstall:
	rm $(PREFIX)/cgi-bin/tw-video-scraper.py
	rm $(PREFIX)/cgi-bin/python.location
	rm $(PREFIX)/cgi-bin/python-tw-video-scraper.desc


