 terraform taint oci_core_subnet.dev
 tf plan
 tf apply

 it taints a resource,  means it is marked for removal,  when next plan and apply the resource is terminated.