ansible-nfs
===========

Currently works on:
* CentOS


Minor modification to work on other distros.

Just provide a list of shares to export like this:
'''
nfs_exports:
  - '/ *(rw)'
  - '/srv *(rw)'
'''
