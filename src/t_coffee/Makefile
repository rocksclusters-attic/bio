# $Id: Makefile,v 1.22 2012/11/27 00:48:54 phil Exp $

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
# Revision 1.22  2012/11/27 00:48:54  phil
# Copyright Storm for Emerald Boa
#
# Revision 1.21  2012/05/06 05:48:52  phil
# Copyright Storm for Mamba
#
# Revision 1.20  2011/07/23 02:30:54  phil
# Viper Copyright
#
# Revision 1.19  2010/09/07 23:53:12  bruno
# star power for gb
#
# Revision 1.18  2009/12/12 00:38:08  anoop
# use gcc instead of cc
#
# Revision 1.17  2009/05/01 19:07:13  mjk
# chimi con queso
#
# Revision 1.16  2008/12/11 04:09:48  anoop
# Bug fix
#
# Revision 1.15  2008/12/10 03:29:37  anoop
# BioRoll Upgrade
#
# Revision 1.14  2008/11/26 21:37:38  anoop
# Merged back from changes in the mercurial repository
#
# Revision 1.13  2008/10/18 00:56:06  mjk
# copyright 5.1
#
# Revision 1.12  2008/07/10 17:15:39  anoop
# Bug fixes to the build
#
# Revision 1.11  2008/04/02 23:44:24  anoop
# Upgraded t_coffee
#
# Revision 1.10  2008/03/06 23:41:49  mjk
# copyright storm on
#
# Revision 1.9  2007/08/28 00:23:07  anoop
# Variables instead of constants used
#
# Revision 1.8  2007/06/23 04:03:29  mjk
# mars hill copyright
#
# Revision 1.7  2006/12/02 01:04:57  anoop
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
# Revision 1.6  2006/09/11 22:47:44  mjk
# monkey face copyright
#
# Revision 1.5  2006/08/10 00:10:01  mjk
# 4.2 copyright
#
# Revision 1.4  2006/03/17 02:52:48  anoop
# More documentation added. Patched t_coffee to build and install correctly
# Modified node xml files to do a better job of configuration.
#
# Revision 1.3  2006/03/16 02:52:10  anoop
# Lots of changes to the roll
#
# Upgraded T_coffee
# modified mrbayes to work better
# modified phylip to work better
# upgraded fasta to install and work correctly
# Put in a little more documentation
#
# Revision 1.2  2006/01/10 20:27:40  anoop
#
# Minor modifications, and RELEASE tag
#
# Revision 1.1  2006/01/10 18:23:29  anoop
#
#
# Added the t_coffee distribution
#
# Modified all the version.mk files by adding the
# ROLL = Bio
# variable.
# For some weird reason none of the packages get this variable from the
# toplevel version.mk file. Must be my misunderstanding of how this works.
#
#
#

PKGROOT = /opt/$(ROLL)/$(NAME)
REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

build:
	gunzip -c $(PACKAGE_NAME).tar.gz | $(TAR) -xf -
	-(cd patch-files && find $(PACKAGE_NAME) -type f | grep -v CVS | cpio -pudv ../)
	( \
		cd $(PACKAGE_NAME); \
		$(MAKE) CC=gcc -C t_coffee_source; \
	)

install::
	( \
		mkdir -p $(ROOT)/$(PKGROOT)/;\
		cd $(PACKAGE_NAME); \
	 	cp -rf bin $(ROOT)/$(PKGROOT)/;\
	 	cp -rf doc $(ROOT)/$(PKGROOT)/;\
	 	cp -rf example $(ROOT)/$(PKGROOT)/;\
	 	cp -rf html $(ROOT)/$(PKGROOT)/;\
	 	cp -rf license.txt $(ROOT)/$(PKGROOT)/;\
		cp -rf t_coffee_source/t_coffee $(ROOT)/$(PKGROOT)/bin; \
	)

clean::
	rm -f $(NAME).spec.in
	rm -rf $(PACKAGE_NAME)
