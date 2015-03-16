docker-php-fpm-ext
==================

Based on docker-centos6-php-fpm + additional PHP libs

### Usage
See https://github.com/SergeyZh/docker-centos6-php-fpm

### Environment

`SMART_HOST` - SMART_HOST for Sendmail. Optional.
`SMTP_USER` - user for SMTP auth. Optional.
`SMTP_PASSWORD` - password for SMTP auth. Optional.
`APC_OFF` - set to anything to disable php apc.

NOTE: run this container with -h `hostname --fqdn` option to speedup start of sendmail

### List of php installed PHP modules:

```
# php -m
[PHP Modules]
apc
bz2
calendar
Core
ctype
curl
date
dom
ereg
exif
fileinfo
filter
ftp
gettext
gmp
hash
iconv
json
ldap
libxml
mbstring
mysql
mysqli
openssl
pcntl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
Reflection
session
shmop
SimpleXML
sockets
SPL
sqlite3
standard
sysvmsg
sysvsem
sysvshm
tokenizer
wddx
xml
xmlreader
xmlwriter
xsl
zip
zlib

[Zend Modules]


```