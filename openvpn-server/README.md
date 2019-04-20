ansible-openvpn
===============

Currently works on Debian, should work on other systems with minor modifications.

Setup an OpenVPN server, certificates need to be generated manually.

Variables used:
```
secrets_root
openvpn_static_addresses
    'cn_of_user': 'ipaddr'
openvpn_iroute:
    'cn_of_user': 'network_addr subnet_mask'
openvpn_users:
    'cn_of_user'
openvpn_server_ip
openvpn_subnet_mask
openvpn_allocation_start
openvpn_allocation_end
openvpn_subnet_mask
openvpn_keys
openvpn_topology
openvpn_remote
```

Tags:
```
openvpn_create_configs - run the local scripts to create configs
```
