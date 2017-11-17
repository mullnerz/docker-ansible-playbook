FROM williamyeh/ansible:alpine3

MAINTAINER zoltan@mullner.hu

RUN mkdir -p /ansible/playbooks

WORKDIR /ansible/playbooks

VOLUME [ "/ansible/playbooks" ]

ENTRYPOINT [ "ansible-playbook" ]

CMD [ "--version" ]
