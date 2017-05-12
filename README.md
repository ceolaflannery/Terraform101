# Terraform101

*Instructions*
- To plan changes run  ```./plan.ps1```
- Inspect the output to see if it's what you expect
- To appy them run ```terraform apply```

*Store your state remotely*
- Running ```./plan.ps1``` will try and get your remote state for the given location (you might want to change the s3 location to a folder under your name or something so as not to clash with anyone else's state)
- Running ```terraform apply`` after running the above script will then save your script to the remote location in s3


*Use someone else's remote state*
- example uses the remote state from the base vpc created in PageUp