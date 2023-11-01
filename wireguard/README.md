I used this guide to set up wireguard: https://www.digitalocean.com/community/tutorials/how-to-set-up-wireguard-on-ubuntu-20-04

My endpoint is a server, and my peers consist of a PC, laptop, phone, and VPS.

I use local DNS to allow for domain names inside the VPN. My setup is described <a href="https://github.com/kenh108/configs/tree/main/dnsmasq">here</a>.

I have created two wireguard interfaces: wg_int and wg_all.

wg_int is an interface that routes all traffic that is destined for one of the peers through the server, otherwise any other internet traffic is routed as normal.
<br>
<img src="wg_int.png">

<br>
wg_all routes all traffic through the server. This interface acts like a regular VPN, where the source IP of any request made is the public IP of the server, not your machine.
<br>
<img src="wg_all.png">
