# Local Repository


## 1. Apache HTTDP
```
$ sudo yum install -y httpd
$ sudo systemctl enable httpd.service
$ sudo systemctl start httpd.service
```


# 2. Parcels
```
sudo mkdir /var/www/html/CDH5.8.4
cd /var/www/html/CDH5.8.4
sudo wget https://archive.cloudera.com/cdh5/parcels/5.8.4/CDH-5.8.4-1.cdh5.8.4.p0.5-el7.parcel
sudo wget https://archive.cloudera.com/cdh5/parcels/5.8.4/CDH-5.8.4-1.cdh5.8.4.p0.5-el7.parcel.sha1
sudo wget https://archive.cloudera.com/cdh5/parcels/5.8.4/manifest.json
cd
sudo chmod -R ugo+rX /var/www/html/CDH5.8.4```
