Provide the following parameters:  
```
      service_name: added as suffix to restic-backup-
      backup_path: backup path
      repo: where the repo is, can contain remote location in string
      repo_password: you can fetch the password from ansible-vault secrets
      retention_days: 7
      retention_weeks: 4
      retention_months: 6
      retention_years: 3
      tag: backuptag
```
