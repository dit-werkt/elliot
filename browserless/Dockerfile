FROM ghcr.io/browserless/chrome:v2.33.0
USER root
# installeer lokaal root certificaat met mkcert.
#RUN curl -L "https://dl.filippo.io/mkcert/latest?for=linux/amd64" -o mkcert
#RUN chmod +x mkcert
#RUN mv mkcert /usr/local/bin/mkcert
#RUN CAROOT=$(pwd) mkcert -install

# instaleer lokaal CA certificaat voor Chrome
COPY rootCA.pem rootCA.pem
RUN apt-get update
RUN apt-get install libnss3-tools
RUN mkdir  mkdir -p ~/.pki/nssdb
RUN certutil -d sql:$HOME/.pki/nssdb -N --empty-password
RUN certutil -d sql:$HOME/.pki/nssdb -A -t TC -n "A Name" -i ./rootCA.pem;