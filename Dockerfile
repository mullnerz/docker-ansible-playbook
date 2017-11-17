FROM williamyeh/ansible:alpine3

MAINTAINER zoltan@mullner.hu

RUN apk --update add py-dnspython py-boto

RUN mkdir -p /ansible/playbooks

WORKDIR /ansible/playbooks

VOLUME [ "/ansible/playbooks" ]

ENTRYPOINT [ "ansible-playbook" ]

CMD [ "--version" ]
