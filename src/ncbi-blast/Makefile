# $Id: Makefile,v 1.25 2012/11/27 00:48:53 phil Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.6 (Emerald Boa)
# 		         version 6.1 (Emerald Boa)
# 
# Copyright (c) 2000 - 2013 The Regents of the University of California.
# All rights reserved.	
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice unmodified and in its entirety, this list of conditions and the
# following disclaimer in the documentation and/or other materials provided 
# with the distribution.
# 
# 3. All advertising and press materials, printed or electronic, mentioning
# features or use of this software must display the following acknowledgement: 
# 
# 	"This product includes software developed by the Rocks(r)
# 	Cluster Group at the San Diego Supercomputer Center at the
# 	University of California, San Diego and its contributors."
# 
# 4. Except as permitted for the purposes of acknowledgment in paragraph 3,
# neither the name or logo of this software nor the names of its
# authors may be used to endorse or promote products derived from this
# software without specific prior written permission.  The name of the
# software includes the following terms, and any derivatives thereof:
# "Rocks", "Rocks Clusters", and "Avalanche Installer".  For licensing of 
# the associated name, interested parties should contact Technology 
# Transfer & Intellectual Property Services, University of California, 
# San Diego, 9500 Gilman Drive, Mail Code 0910, La Jolla, CA 92093-0910, 
# Ph: (858) 534-5815, FAX: (858) 534-7345, E-MAIL:invent@ucsd.edu
# 
# THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS''
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.25  2012/11/27 00:48:53  phil
# Copyright Storm for Emerald Boa
#
# Revision 1.24  2012/05/06 05:48:52  phil
# Copyright Storm for Mamba
#
# Revision 1.23  2011/08/04 19:14:00  anoop
# Use /opt/perl/bin/perl instead of /opt/rocks/bin/perl
#
# Revision 1.22  2011/07/23 02:30:54  phil
# Viper Copyright
#
# Revision 1.21  2010/09/07 23:53:12  bruno
# star power for gb
#
# Revision 1.20  2009/05/01 19:07:11  mjk
# chimi con queso
#
# Revision 1.19  2009/04/30 20:32:24  anoop
# Upgraded NCBI Toolbox
#
# Revision 1.18  2008/11/26 21:37:37  anoop
# Merged back from changes in the mercurial repository
#
# Revision 1.17  2008/10/18 00:56:04  mjk
# copyright 5.1
#
# Revision 1.16  2008/04/28 23:38:05  anoop
# *** empty log message ***
#
# Revision 1.15  2008/04/02 23:41:16  anoop
# Upgraded ncbi toolkit to include blast 2.2.18
#
# Revision 1.14  2008/03/06 23:41:47  mjk
# copyright storm on
#
# Revision 1.13  2007/11/30 19:37:36  anoop
# *** empty log message ***
#
# Revision 1.12  2007/11/29 01:57:36  anoop
# *** empty log message ***
#
# Revision 1.11  2007/11/29 00:20:52  anoop
# Bug fix
#
# Revision 1.10  2007/11/29 00:14:53  anoop
# Updated NCBI toolkit to March 12 2007 version.
# This is the only version supported by the mpiblast cvs tree
#
# Revision 1.9  2007/06/23 04:03:27  mjk
# mars hill copyright
#
# Revision 1.8  2006/12/18 20:23:47  anoop
# Bug Fix - PATH variable for EMBOSS was broken
#
# Now the perl files in ncbi use /opt/rocks/bin/perl rather than /usr/bin/perl or /usr/local/bin/perl
#
# Revision 1.7  2006/12/02 01:04:56  anoop
# Ridiculously big ass commit.
# Also known as the week after thanksgiving 2006. Or "The day Anoop
# broke Rocks".
#
# Main Changes.
#
# 1. Added a roll-profile.mk file. This is meant as a makefile for building
# the profile rpm containing all the XML files meant for the roll. This is a
# breakaway from the spec.in file method of building the profile RPM.
#
# 2. The variable PWD is now changed to CURDIR. The main reason for this is
# PWD is supplied by the shell. CURDIR is the variable supplied by gmake itself.
# This means we can have a slightly more platform independant way of doing things.
# Also Solaris was failing to set PWD correctly in the source directories, wreaking
# havoc on the location of the BUILD and PKG directories.
#
# Revision 1.6  2006/09/11 22:47:33  mjk
# monkey face copyright
#
# Revision 1.5  2006/08/10 00:09:50  mjk
# 4.2 copyright
#
# Revision 1.4  2006/07/12 19:50:59  anoop
# Bug Fixes
#
# Revision 1.3  2006/02/08 20:42:25  anoop
# Initial commit of the mpiblast program. This required a few changes to the
# ncbi-blast toolset, along with rather an unusual way of building mpiblast,
# as mpiblast requires the presence of patched & compiled source code of ncbi-blast
# to be present.
#
# Revision 1.2  2005/12/30 16:46:00  mjk
# copyrights in place
#
# Revision 1.1  2005/12/16 19:24:56  anoop
# *** empty log message ***
#
# Revision 1.4  2005/12/14 03:11:04  mjk
# added cvs tags back, roll builds
#

PKGROOT = /opt/$(ROLL)/$(NAME)
REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

build:
	gunzip -c $(NAME).tar.gz | $(TAR) -xf -
	(cd patch-files; find . -type f | grep -v CVS | cpio -pudv ../; )
	-find $(NAME)/ -name *.pl | xargs sed -i -e 's/usr.*.bin.perl/opt\/perl\/bin\/perl/g'
	$(NAME)/make/makedis.csh

install::
	mkdir -p $(ROOT)/$(PKGROOT)
	cp -rf $(NAME)/bin $(NAME)/lib $(NAME)/doc $(NAME)/data $(NAME)/README* $(ROOT)/$(PKGROOT)
	mkdir -p $(ROOT)/$(PKGROOT)/network/
	cp -rf $(NAME)/network/wwwblast/ $(ROOT)/$(PKGROOT)/network/

clean::
	rm -f $(NAME).spec.in
	rm -rf $(NAME)
