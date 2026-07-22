### Definition:
>**Cryptography** is the science of protecting the information which is readable data (plaintext) into a scrambled, unreadable format (cipher text) using mathematical algorithm and a key. The intended reciepient uses the corresponding key to decrypt the message back into plain text.

Cryptography is Encryption + Decryption.

### Encryption:
>Converting the plaintext into ciphertext with the help of the key.

### Decryption:
>Converting the ciphertext into plaintext with the help of the key.

Two types of Keys : 
* **Symmetric keys** : Sender and Reciever will have the same key.
	*Challenges:*	
		- The key need to shared between sender and reciever before the communication begins.
		- An exclusive key should be created between a sender and the reciever.(If A have to send message to B, C and D) <- Key management problem.
	*Algorithms:*
		- AES (Advanced Encryption Standard)
		- DES (Data Encryption Standard)
* **Asymmetric keys** : Uses *private key* and *public key* for encryption and decryption.
```
			   Encryption              Decryption
	Plain text ----------> Cipher text ----------> Plain text
			   Public key              Private key
```

- Private key should be only known to the owner
- Public key can be known to everyone and used by any sender to send a encrypted message which can be decrypted by the reciever with their private key.
*Algorithms:*
	- RSA (Rivest, Shamir, Adleman)
	- ECC (Elliptic curve cryptography)

A (B's public key) -> message -> B (B's private key)
- C hacks the packet and changes the messages by C knowing the public key of B and send to B. B is not sure, who sent the message ?

To prove the message is sent by the actual person:
	We need the **Digital Signature** of the sender.

A will encrypt the message with its own private key and B will decrypt with A's public key.

Here also the security is not enough.
Because If A sends a message with encrypted using its private key, the middle man C will have the A's public key and decrypts the message, but the message needs to decrypted only by the B.

 Solution: **Double Encryption**
 A will use B's public key to encrypt and again A encrypts the encrypted message with its private key (double encryption). B decrypts the message with the B's private key and again decrypts the message with A's public key.

If C wants to hack the message : C uses the A's public key to decrypt the message and it needs C's private key to decrypt again to see the message.



