logging_essentials:
  pkg.installed:
    - pkgs:
      - iptables
      - logwatch
      - aide

logwatch_crontab:
  file.managed:
    - name: /etc/cron.daily/00logwatch
    - source: salt://logging/files/cron.dayly/00logwatch
    - require:
      - pkg: logwatche
