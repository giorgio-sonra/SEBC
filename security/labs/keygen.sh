if [ "$#" == 0 ]; then
  echo Usage: "$0 <password> [sufix]"
  exit 1
fi

KEY_PASS="$1"
CER_SUFFIX="$2" # server
CER_DNAME="CN=$(hostname -f),OU=Engineering,O=Sonra,L=Dublin,ST=Leinster,C=IE"
CER_DIR="/opt/cloudera/security/pki"

if [ "$CER_SUFFIX" == "" ]; then
  CER_SUFFIX="agent"
fi
JAVA_HOME="$JAVA_HOME"
if [ "$JAVA_HOME" == "" ]; then
  JAVA_HOME=`ls -d /usr/java/jdk*|sort -r|head -1`
fi
if [ "$JAVA_HOME" == "" ]; then
  echo "JAVA_HOME not found!"
  exit 1
fi

CER_ALIAS=$(hostname -f)-$CER_SUFFIX
CER_PATH="$CER_DIR/$CER_ALIAS"
CER_LINK="$CER_DIR/$CER_SUFFIX"

mkdir -p $CER_DIR

rm -f $CER_PATH.jks
rm -f $CER_PATH.p12
rm -f $CER_PATH.key
rm -f $CER_PATH.cert.pem
rm -f $CER_LINK.jks
rm -f $CER_LINK.cert.pem
rm -f $CER_LINK.key

# maybe only for agents
if [ "$CER_SUFFIX" == "agent" ]; then
  $JAVA_HOME/bin/keytool \
  -genkeypair \
  -alias $CER_ALIAS \
  -keyalg RSA \
  -keystore $CER_PATH.jks \
  -dname $CER_DNAME \
  -keysize 2048 \
  -validity 360 \
  -storepass $KEY_PASS \
  -keypass $KEY_PASS \
  -ext EKU=serverAuth,clientAuth # maybe only for agents
else
  $JAVA_HOME/bin/keytool \
  -genkeypair \
  -alias $CER_ALIAS \
  -keyalg RSA \
  -keystore $CER_PATH.jks \
  -dname $CER_DNAME \
  -keysize 2048 \
  -validity 360 \
  -storepass $KEY_PASS \
  -keypass $KEY_PASS
fi

$JAVA_HOME/bin/keytool \
-importkeystore \
-srcalias $CER_ALIAS \
-srckeystore $CER_PATH.jks \
-srcstorepass $KEY_PASS \
-srckeypass $KEY_PASS \
-destkeystore $CER_PATH.p12 \
-deststoretype PKCS12 \
-deststorepass $KEY_PASS \
-destkeypass $KEY_PASS

openssl pkcs12 \
-in $CER_PATH.p12 \
-passin pass:$KEY_PASS \
-out $CER_PATH.cert.pem \
-nokeys

openssl pkcs12 \
-in $CER_PATH.p12 \
-passin pass:$KEY_PASS \
-nocerts \
-out $CER_PATH.key \
-passout pass:$KEY_PASS

# maybe only for agents
if [ "$CER_SUFFIX" == "agent" ]; then
  ln -s $CER_PATH.cert.pem $CER_LINK.cert.pem
  ln -s $CER_PATH.jks $CER_LINK.jks
  ln -s $CER_PATH.key $CER_LINK.key
  echo "$KEY_PASS" > /etc/cloudera-scm-agent/agentkey.pw
  chown root:root /etc/cloudera-scm-agent/agentkey.pw
  chmod 440 /etc/cloudera-scm-agent/agentkey.pw
# maybe of for server
elif [ "$CER_SUFFIX" == "server" ]; then
  mkdir -p /opt/cloudera/security/x509

  keytool -export \
  -alias $CER_ALIAS \
  -keystore $CER_PATH.jks \
  -storepass $KEY_PASS \
  -rfc \
  -file /opt/cloudera/security/x509/$CER_ALIAS.pem
fi

# check
openssl x509 -in $CER_PATH.cert.pem -noout -text
