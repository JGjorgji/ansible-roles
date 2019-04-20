Secure SSH by providing more secure configs, including turning off support for old and insecure ciphers and algorithms.
If the below variables are provided we use a local ssh CA to sign the server so we can use the SSH CA system.

Variables:
```
ssh_ca - Whether to enable or disable signing the host key
ssh_ca_server_hostnames - List of hostnames to make sign the cert with
```
