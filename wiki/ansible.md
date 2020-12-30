sudo vi /etc/ansible/hosts

ansible all -m ping

the same ping action in a playbook

---

- name: Network Getting Started First Playbook
# connection: network_cli
  gather_facts: false
  hosts: all
  tasks:
     - name: ping
       ping: {}


ansible-playbook first.yml

Second.yml
----------

---

- name: Network Getting Started First Playbook
# connection: network_cli
  gather_facts: false
  hosts: all
  tasks:
    - name: ping
      ping: {}
    - name: create file
      template:
       src: example.j2
       dest: example.md
    - name: service
      become: true
      service: 
       name: httpd
       state: started
 

example.j2
java_env is {{ java_env  }}
