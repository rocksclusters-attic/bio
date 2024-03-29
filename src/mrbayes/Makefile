# $Id: Makefile,v 1.17 2012/11/27 00:48:53 phil Exp $
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
# Revision 1.17  2012/11/27 00:48:53  phil
# Copyright Storm for Emerald Boa
#
# Revision 1.16  2012/05/06 05:48:52  phil
# Copyright Storm for Mamba
#
# Revision 1.15  2011/07/23 02:30:54  phil
# Viper Copyright
#
# Revision 1.14  2010/09/07 23:53:11  bruno
# star power for gb
#
# Revision 1.13  2009/05/01 19:07:11  mjk
# chimi con queso
#
# Revision 1.12  2008/11/26 21:37:37  anoop
# Merged back from changes in the mercurial repository
#
# Revision 1.11  2008/10/18 00:56:04  mjk
# copyright 5.1
#
# Revision 1.10  2008/04/21 06:48:20  anoop
# MPI version of MrBayes
#
# Revision 1.9  2008/04/04 18:20:13  anoop
# Fix build bugs
#
# Revision 1.8  2008/04/02 23:40:33  anoop
# *** empty log message ***
#
# Revision 1.7  2008/03/06 23:41:47  mjk
# copyright storm on
#
# Revision 1.6  2007/06/23 04:03:27  mjk
# mars hill copyright
#
# Revision 1.5  2006/12/02 01:04:56  anoop
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
# Revision 1.4  2006/09/11 22:47:33  mjk
# monkey face copyright
#
# Revision 1.3  2006/08/10 00:09:49  mjk
# 4.2 copyright
#
# Revision 1.2  2006/03/16 02:52:10  anoop
# Lots of changes to the roll
#
# Upgraded T_coffee
# modified mrbayes to work better
# modified phylip to work better
# upgraded fasta to install and work correctly
# Put in a little more documentation
#
# Revision 1.1  2006/01/30 21:19:18  anoop
# Initial commit of MrBayes
#

PKGROOT = /opt/$(ROLL)/$(NAME)
REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

build:
	gunzip -c $(NAME)-$(VERSION).tar.gz | $(TAR) -xf -
	(cd patch-files && find . -type f | grep -v  CVS | cpio -pudv ../$(NAME)-$(VERSION))
	( \
		cd $(NAME)-$(VERSION); \
		$(MAKE) MPI=yes \
			CC=$(MPIROOT)/bin/mpicc \
			LDFLAGS+="-L/opt/rocks/lib -L/opt/sfw/lib"\
			CPPFLAGS+=-I/opt/rocks/include; \
	)

install::
	mkdir -p $(ROOT)/$(PKGROOT)/
	( \
		cd $(NAME)-$(VERSION); \
		$(INSTALL) mb $(ROOT)/$(PKGROOT)/mb; \
		cp -rf *.nex $(ROOT)/$(PKGROOT);\
		$(INSTALL) gpl.txt $(ROOT)/$(PKGROOT)/gpl.txt;\
	)

clean::
	rm -f $(NAME).spec.in
	rm -rf $(NAME)-$(VERSION)
