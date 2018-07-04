FROM williamyeh/ansible:alpine3

MAINTAINER zoltan@mullner.hu

#RUN pip install --upgrade ansible

RUN apk --update add bash

RUN apk --update add py-dnspython \
                     py-boto \
                     py-netaddr \
                     bind-tools
                     
RUN apk --update add html2text

RUN pip install httpie

RUN apk --update add php7 \
                     php7-json

RUN apk --update add git

RUN apk --update add jq

RUN apk --update add curl

RUN mkdir -p /ansible/playbooks

WORKDIR /ansible/playbooks

VOLUME [ "/ansible/playbooks" ]

# default command: display Ansible version
CMD [ "ansible-playbook", "--version" ]
