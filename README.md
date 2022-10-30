<div id="header" align="center">
  <h1>this Module is to create a VM with a script to install NGINX with a static External IP</h1>
</div>


<strong>Hint:this module is not tested on a gcp account</strong>

<h2>instruction on how to create an SSH key and use it in the module</h2>
<ol>
  <li> "ssh-keygen -t rsa" will generate 2 files id_rsa.pub and id_rsa</li>
  <li>you have to update the "gce_ssh_pub_key_file" variable in the values.tfvars with the distentation of the public key</li>
</ol>
<h2>How to Run this Moduel?</h2>
 <ol>
  <li>"terrafrom init"</li>
  <li>"terraform plan -var-file="values.tfvars"" to plan and check the results</li>
  <li>"terraform apply -var-file="values.tfvars"" to apply the changes on the cloud</li>
</ol>
<strong>Hint: you can add arguments <-input=false -auto-approve> for auto apply on (plan and apply)</strong>
<h3>you can also update the tfvars folder if you desire to change variables.</h3>

<h2>to destory the infrastructure</h2>
<ol>
  <li>"terraform destroy -var-file="values.tfvars""</li>
</ol>

<h2>how to ssh to the VM?</2>
  
<p>after the code is finished you can run :</p>
  
<ol>
  <li>ssh "admin@generated_IP" address on console> we can check the generated address on the console</li>
</ol>



