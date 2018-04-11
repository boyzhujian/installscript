#How to setup key system 
### https://blog.hboeck.de/archives/888-How-I-tricked-Symantec-with-a-Fake-Private-Key.html

For RSA a public key consists of a modulus (usually named N) and a public exponent (usually called e). 

 Private keys usually contain the full public key (N, e), the private exponent (d) and several other values that are redundant, but they are useful to speed up certain things. 
 
 But just keep in mind that a public key consists of two numbers and a private key is a public key plus some additional numbers. 
 
 A certificate ultimately is just a public key with some additional information (like the host name that says for which web page it’s valid) signed by a certificate authority.
