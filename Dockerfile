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

RUN mkdir -p /ansible/playbooks

WORKDIR /ansible/playbooks

VOLUME [ "/ansible/playbooks" ]

ENTRYPOINT [ "ansible-playbook" ]

CMD [ "--version" ]
