this Module is to create a VM with a script to install NGINX with a static External IP

-this module is not tested on a gcp account.

-instruction on how to create an SSH key and use it in the module

->1) <ssh-keygen -t rsa> => will generate 2 files id_rsa.pub and id_rsa

->2) you have to update the "gce_ssh_pub_key_file" variable in the values.tfvars with the distentation of the public key

How to Run this Moduel?
  
-> 1) < terrafrom init >

-> 2) <terraform plan -var-file="values.tfvars"> to plan and check the results

-> 3) <terraform apply -var-file="values.tfvars"> to apply the changes on the cloud

Hint: you can add arguments <-input=false -auto-approve> for auto apply on (plan and apply)
  
you can also update the tfvars folder if you desire to change variables.

to destory the infrastructure
  
-> <terraform destroy -var-file="values.tfvars">

-how to ssh to the VM?
  
after the code is finished you can run :
  
-> ssh admin@<generated IP address on console> we can check the generated address on the console



