  #!/usr/bin/env bash
  route delete default 10.0.2.2
  route add default 10.9.9.1
  grep ntpd_enable /etc/rc.conf || echo 'ntpd_enable="YES"' >> /etc/rc.conf
  /etc/rc.d/ntpd start
