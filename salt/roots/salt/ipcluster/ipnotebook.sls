ipython-notebook:
    pkg:
        - installed

/etc/supervisor/conf.d/ipnotebook.conf:
    file:
        - managed
        - source: salt://ipcluster/etc/supervisor/conf.d/ipnotebook.conf
        - user: root
        - group: root
        - require:
            - pkg: supervisor
            - pkg: ipython-notebook