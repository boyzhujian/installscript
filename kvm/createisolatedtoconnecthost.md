[rehat doc abount why host can not connect guest](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/virtualization_host_configuration_and_guest_installation_guide/app_macvtap)

define network
```
<network>
  <name>isolated</name>
  <ip address='192.168.254.1' netmask='255.255.255.0'>
    <dhcp>
      <range start='192.168.254.2' end='192.168.254.254' />
    </dhcp>
  </ip>
</network>
```
add to domain xml
```
<interface type='network'>
  <source network='isolated'/>
  <model type='virtio'/>
</interface>


```
