### ansible-mailserver

This is a role taken from the sovereign ansible playbook, it's been changed in cases where i didn't like their aproach.

Notable changes include:
* Users are not added with the role since i didn't like dropping the database every time i want to make a change so i made a quick python app and removed it from the role.
* No solr
* SSL/TLS is moved to a separate role
* OpenDKIM made to work with multiple domains automatically


### Ports needed
25 - postfix/not really needed
465 - postfix/smtps
587 - postfix/submission
993 - dovecot/imaps
995 - dovecot/pop3s