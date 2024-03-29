# $Id: Makefile,v 1.20 2012/11/27 00:48:52 phil Exp $

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
# Revision 1.20  2012/11/27 00:48:52  phil
# Copyright Storm for Emerald Boa
#
# Revision 1.19  2012/05/06 05:48:51  phil
# Copyright Storm for Mamba
#
# Revision 1.18  2011/07/23 02:30:53  phil
# Viper Copyright
#
# Revision 1.17  2010/09/07 23:53:11  bruno
# star power for gb
#
# Revision 1.16  2009/05/01 19:07:10  mjk
# chimi con queso
#
# Revision 1.15  2009/04/30 19:27:55  anoop
# Upgraded clustalw to 2.0.11
#
# Revision 1.14  2008/12/10 03:29:23  anoop
# BioRoll Upgrade
#
# Revision 1.13  2008/11/26 21:37:36  anoop
# Merged back from changes in the mercurial repository
#
# Revision 1.12  2008/10/18 00:56:04  mjk
# copyright 5.1
#
# Revision 1.11  2008/04/02 23:37:50  anoop
# Upgraded Clustalw
#
# Revision 1.10  2008/03/06 23:41:46  mjk
# copyright storm on
#
# Revision 1.9  2007/06/23 04:03:26  mjk
# mars hill copyright
#
# Revision 1.8  2006/12/02 01:04:55  anoop
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
# Revision 1.7  2006/09/11 22:47:32  mjk
# monkey face copyright
#
# Revision 1.6  2006/08/10 00:09:48  mjk
# 4.2 copyright
#
# Revision 1.5  2006/03/17 17:08:01  anoop
# Fixed syntax error in Makefile
#
# Revision 1.4  2006/03/09 22:06:05  anoop
# *** empty log message ***
#
# Revision 1.3  2006/01/10 19:28:43  anoop
#
# Minor modifications to clustalw Makefile
# changes to t_coffee internal makefile; so the tar file changed
#
# Revision 1.2  2006/01/04 22:45:19  anoop
#
# Now the Makefiles compile the applications correctly.
#
# The clustal tar ball is created from the correct directory, ie. it contains
# clustalw instead of clustalw1.83 as its top level directory.
#
# version.mk reflects version as 1.83 rather than 1.8
#
# Revision 1.1  2006/01/04 01:59:07  anoop
#
# Clustal Files
#
#

PKGROOT = /opt/$(ROLL)/$(NAME)
REDHAT.ROOT = $(CURDIR)/../../
EXECUTABLE = clustalw
HELP = clustalw_help

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

build:
	gunzip -c $(NAME)-$(VERSION).tar.gz | $(TAR) -xf -
	-(cd patch-files/$(OS) && find $(NAME)-$(VERSION) -type f \
		| grep -v CVS | cpio -pudv ../../)
	(\
		cd $(NAME)-$(VERSION);		\
		./configure --prefix=$(PKGROOT);\
		$(MAKE);			\
	)

install::
	
	(\
		cd $(NAME)-$(VERSION);\
		$(MAKE) prefix=$(ROOT)/$(PKGROOT) install;\
	)

clean::
	rm -rf $(NAME)-$(VERSION)
	rm -rf $(NAME).spec.in
