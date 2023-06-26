# workstation_automation


Follow the following steps to set it up

- Install ansible with `pip3 install ansible`
- make sure sudo token is available, recommended: `user_name    ALL=(ALL) NOPASSWD:ALL`
- make use th `LANG` is `UTF-8`, to enable it rin `sudo update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8`, then `reboot` for it to take effect
- To avoid warnings related to host files while running ansible, add `[localhost]\n127.0.0.1\n` to /etc/ansible/hosts (optional)
- Clone the repo `git clone https://github.com/nikhil37/workstation_automation`
- `cd workstation_automation`
- Open `burpsuite` once before running it to make sure that all the terms are accepted so that the script, which doesn't have GUI, doesn't error
- To install roles required run `ansible-galaxy install -r requirments.txt`
- Run `ansible-playbook main.yml` to run the ansible playbook
- Finally run `chsh -s /bin/zsh` to permenently change your default shell to zsh


### HUGE props to ippsec, For inspiring this and for the Amazing github release downloading script


**To Change the packages involved please check the vars.yml of the section**