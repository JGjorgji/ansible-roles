ansible-dnsmasq
===============

Basic dnsmasq server with a file providing dns mappings.

Works on:
* CentOS
* Debian
* Ubuntu

Variable examples:  
```
dnsmasq_listen_address
dnsmasq_listen_interface
dnsmasq_nameservers:
    - '8.8.8.8'
    - '8.8.4.4'
dns_mappings:
    'hostname' : '10.0.0.1'
    'othername' : '10.0.0.2'
```
