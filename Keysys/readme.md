#How to setup key system 
### https://blog.hboeck.de/archives/888-How-I-tricked-Symantec-with-a-Fake-Private-Key.html

To understand this we need to get a bit into the details of RSA keys. In essence a cryptographic key is just a set of numbers. For RSA a public key consists of a modulus (usually named N) and a public exponent (usually called e). You don’t have to understand their mathematical meaning, just keep in mind: They’re nothing more than numbers.

An RSA private key is also just numbers, but more of them. If you have heard any introductory RSA descriptions you may know that a private key consists of a private exponent (called d), but in practice it’s a bit more. Private keys usually contain the full public key (N, e), the private exponent (d) and several other values that are redundant, but they are useful to speed up certain things. But just keep in mind that a public key consists of two numbers and a private key is a public key plus some additional numbers. A certificate ultimately is just a public key with some additional information (like the host name that says for which web page it’s valid) signed by a certificate authority.
