#
# $Id: Makefile,v 1.9 2010/09/07 23:53:10 bruno Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.4 (Maverick)
# 
# Copyright (c) 2000 - 2010 The Regents of the University of California.
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
# Revision 1.9  2010/09/07 23:53:10  bruno
# star power for gb
#
# Revision 1.8  2009/05/01 19:07:10  mjk
# chimi con queso
#
# Revision 1.7  2008/10/31 16:34:56  bruno
# convert more rolls to use new development environment
#
# Revision 1.6  2008/10/18 00:56:03  mjk
# copyright 5.1
#
# Revision 1.5  2008/03/06 23:41:46  mjk
# copyright storm on
#
# Revision 1.4  2007/06/23 04:03:26  mjk
# mars hill copyright
#
# Revision 1.3  2006/09/11 22:47:31  mjk
# monkey face copyright
#
# Revision 1.2  2006/08/10 00:09:47  mjk
# 4.2 copyright
#
# Revision 1.1  2005/12/09 22:59:54  anoop
#
#
# Bio Roll
#
# Revision 1.9  2005/10/12 18:09:31  mjk
# final copyright for 4.1
#
# Revision 1.8  2005/09/16 01:03:05  mjk
# updated copyright
#
# Revision 1.7  2005/05/24 21:22:34  mjk
# update copyright, release is not any closer
#
# Revision 1.6  2004/03/25 03:15:55  bruno
# touch 'em all!
#
# update version numbers to 3.2.0 and update copyrights
#
# Revision 1.5  2003/08/27 23:10:55  mjk
# - copyright update
# - rocks-dist uses getArch() fix the i686 distro bug
# - ganglia-python spec file fixes (bad service start code)
# - found some 80col issues while reading code
# - WAN ks support starting
#
# Revision 1.4  2003/07/30 22:23:56  mjk
# i dunno
#
# Revision 1.3  2003/07/17 16:48:43  mjk
# *** empty log message ***
#
# Revision 1.2  2003/07/11 23:55:08  bruno
# touchup on the rolls
#
# Revision 1.2  2003/07/10 22:20:20  bruno
# closer
#
# Revision 1.1  2003/07/07 20:47:51  bruno
# initial release
#
#
#

-include $(ROLLSROOT)/etc/Rolls.mk
include Rolls.mk

default: roll

