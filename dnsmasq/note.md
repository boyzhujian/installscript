https://mohan43u.wordpress.com/2012/08/06/dnsmasq-for-home-user/

```
domain-needed
bogus-priv
no-resolv
server=8.8.8.8
server=8.8.4.4
local=/drunkenmonk.org/
domain=drunkenmonk.org
dhcp-range=interface:br0,192.168.2.2,192.168.2.254,255.255.255.0,1d
mx-host=drunkenmonk.org,mail.drunkenmonk.org,30
cname=drunkenmonk.org,bridge.mokka.drunkenmonk.org
cname=www.drunkenmonk.org,bridge.mokka.drunkenmonk.org
cname=mail.drunkenmonk.org,bridge.mokka.drunkenmonk.org
```



 --dhcp-option=[tag:<tag>,[tag:<tag>,]][encap:<opt>,][vi-encap:<enterprise>,][vendor:[<vendor-class>],][<opt>|option:<opt-name>|option6:<opt>|option6:<opt-name>],[<value>[,<value>]]
    Specify different or extra options to DHCP clients. By default, dnsmasq sends some standard options to DHCP clients, the netmask and broadcast address are set to the same as the host running dnsmasq, and the DNS server and default route are set to the address of the machine running dnsmasq. (Equivalent rules apply for IPv6.) If the domain name option has been set, that is sent. This configuration allows these defaults to be overridden, or other options specified. The option, to be sent may be given as a decimal number or as "option:<option-name>" The option numbers are specified in RFC2132 and subsequent RFCs. The set of option-names known by dnsmasq can be discovered by running "dnsmasq --help dhcp". For example, to set the default route option to 192.168.4.4, do --dhcp-option=3,192.168.4.4 or --dhcp-option = option:router, 192.168.4.4 and to set the time-server address to 192.168.0.4, do --dhcp-option = 42,192.168.0.4 or --dhcp-option = option:ntp-server, 192.168.0.4 The special address 0.0.0.0 is taken to mean "the address of the machine running dnsmasq".

    Data types allowed are comma separated dotted-quad IPv4 addresses, []-wrapped IPv6 addresses, a decimal number, colon-separated hex digits and a text string. If the optional tags are given then this option is only sent when all the tags are matched.

    Special processing is done on a text argument for option 119, to conform with RFC 3397. Text or dotted-quad IP addresses as arguments to option 120 are handled as per RFC 3361. Dotted-quad IP addresses which are followed by a slash and then a netmask size are encoded as described in RFC 3442.

    IPv6 options are specified using the option6: keyword, followed by the option number or option name. The IPv6 option name space is disjoint from the IPv4 option name space. IPv6 addresses in options must be bracketed with square brackets, eg. --dhcp-option=option6:ntp-server,[1234::56] For IPv6, [::] means "the global address of the machine running dnsmasq", whilst [fd00::] is replaced with the ULA, if it exists, and [fe80::] with the link-local address.

    Be careful: no checking is done that the correct type of data for the option number is sent, it is quite possible to persuade dnsmasq to generate illegal DHCP packets with injudicious use of this flag. When the value is a decimal number, dnsmasq must determine how large the data item is. It does this by examining the option number and/or the value, but can be overridden by appending a single letter flag as follows: b = one byte, s = two bytes, i = four bytes. This is mainly useful with encapsulated vendor class options (see below) where dnsmasq cannot determine data size from the option number. Option data which consists solely of periods and digits will be interpreted by dnsmasq as an IP address, and inserted into an option as such. To force a literal string, use quotes. For instance when using option 66 to send a literal IP address as TFTP server name, it is necessary to do --dhcp-option=66,"1.2.3.4"

    Encapsulated Vendor-class options may also be specified (IPv4 only) using --dhcp-option: for instance --dhcp-option=vendor:PXEClient,1,0.0.0.0 sends the encapsulated vendor class-specific option "mftp-address=0.0.0.0" to any client whose vendor-class matches "PXEClient". The vendor-class matching is substring based (see --dhcp-vendorclass for details). If a vendor-class option (number 60) is sent by dnsmasq, then that is used for selecting encapsulated options in preference to any sent by the client. It is possible to omit the vendorclass completely; --dhcp-option=vendor:,1,0.0.0.0 in which case the encapsulated option is always sent.

    Options may be encapsulated (IPv4 only) within other options: for instance --dhcp-option=encap:175, 190, iscsi-client0 will send option 175, within which is the option 190. If multiple options are given which are encapsulated with the same option number then they will be correctly combined into one encapsulated option. encap: and vendor: are may not both be set in the same --dhcp-option.

    The final variant on encapsulated options is "Vendor-Identifying Vendor Options" as specified by RFC3925. These are denoted like this: --dhcp-option=vi-encap:2, 10, text The number in the vi-encap: section is the IANA enterprise number used to identify this option. This form of encapsulation is supported in IPv6.
      The address 0.0.0.0 is not treated specially in encapsulated options. 
