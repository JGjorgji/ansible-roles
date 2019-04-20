Ansible role to install and configure samba for file sharing.

Currently works with:
* CentOS


Configuration options are given like the samba config file only in an ansible dict, below is an example for the main config.
Underscores are replaced with whitespace to match samba config format.
```
samba_root: '/srv/samba'
samba_workgroup: 'WORKGROUP'
samba_homes_path: '/home'
samba_shares_path: '{{ samba_root }}/shares'
samba_homes_enabled: true
samba_global_config:
  workgroup: '{{ samba_workgroup }}'
  netbios_name: '{{ ansible_hostname}}'
  server_string: '{{ "%h file server" }}'

  log_file: '/var/log/samba/log.%m'
  max_log_size: '1000'

  security: 'user'
  map_to_guest: 'Bad User'
  guest_account: 'nobody'

  locking: 'yes'
  browseable: 'yes'
  create_mask: '0665'
  directory_mask: '0775'
  use_sendfile: 'yes'
  socket_options: 'TCP_NODELAY IPTOS_LOWDELAY SO_RCVBUF=131072 SO_SNDBUF=131072'

  wins_support: 'no'
  dns_proxy: 'no'
  name_resolve_order: 'lmhosts host wins bcast'

  printing: 'bsd'
  load_printers: 'no'
  printcap_name: '/dev/null'
  show_add_printer_wizard: 'no'
  disable_spoolss: 'yes'

  server_signing: 'mandatory'
```

Here are some share definitions:
```
samba_shares:
  'public':
    path: '{{ samba_shares_path }}/public'
    read_only: 'no'
    guest_ok: 'yes'
    public: 'yes'
    create_mask: '0777'
    directory_mask: '0777'

  'media':
    path: '{{ samba_shares_path }}/media'
    create_mask: '0777'
    directory_mask: '0777'
    public: 'yes'
    guest_ok: 'yes'
    read_only: 'no'
```
The role will auto create the directories with appropriate permissions.
