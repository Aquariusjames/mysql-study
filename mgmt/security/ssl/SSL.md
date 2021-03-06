# SSL

- Uses different encryption algorithms to secure data over a public network
- Detects any data change, loss, or replay
- Incorporates algorithms that provide identity verification using the X509 standard

## Staring the MySQL Server with SSL

```bash
mysqld --ssl-ca=ca-cert.pem \
--ssl-cert=server-cert.pem \
--ssl-key=server-key.pem
```

## REQUIRE SSL
```mysql
GRANT ALL PRIVILEGES ON test.*
TO 'root'@'localhost'
IDENTIFIED BY 'goodsecret' REQUIRE SSL;
```

- REQUIRE NONE
- REQUIRE SSL
- REQUIRE X509

## Check Status

```mysql
SHOW VARIABLES LIKE 'have_ssl';
```
```mysql
SHOW STATUS LIKE 'ssl_cipher';
```


## Reference

- [SSL Cert](https://dev.mysql.com/doc/refman/5.6/en/creating-ssl-files-using-openssl.html)
- [windows-and-ssh](https://dev.mysql.com/doc/refman/5.6/en/windows-and-ssh.html)
- [faqs-security](https://dev.mysql.com/doc/refman/5.6/en/faqs-security.html)