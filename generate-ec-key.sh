# Generate a private key for content decryption
openssl ecparam -name prime256v1 -genkey -noout -out singpass-decryption-key.pem

# Generate a public key for content encryption
openssl ec -in singpass-decryption-key.pem -pubout -out singpass-encryption-key.pem

# Generate a private key for signature signing key
openssl ecparam -name prime256v1 -genkey -noout -out singpass-signing-key.pem

# Generate a public key for signature verification key
openssl ec -in singpass-signing-key.pem -pubout -out singpass-verification-key.pem
