ansible-nginx

=============

Install nginx with no special configs and use acme.sh to get let's encrypt certificates for all domains specified in the `tls_domains` variable.

`webroot` also needs to be declared pointing to the webroot.
`tls_postcmd` for command to execute after renewing certificates
