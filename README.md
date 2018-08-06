docker-ansible-playbook
=======================

Docker images for testing and running Ansible playbooks

How to use it
-------------
```bash
    # Running without any parameter to check ansible version
    $ docker run --rm -it mullnerz/ansible-playbook
    ansible-playbook 2.4.1.0
      config file = None
      configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
      ansible python module location = /usr/lib/python2.7/site-packages/ansible
      executable location = /usr/bin/ansible-playbook
      python version = 2.7.13 (default, Apr 20 2017, 12:13:37) [GCC 6.3.0]
    
    
    # Run basic test with mounted volume and syntax-check parameter
    $ docker run --rm -it -v $(pwd):/ansible/playbooks mullnerz/ansible-playbook ansible-playbook --syntax-check site.yml
    
    playbook: site.yml
```

Author Information
------------------

Created in 2017 by [Zoltán Müllner](http://zoltan.mullner.hu/).
