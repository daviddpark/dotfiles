# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# LCOI STUFF
alias sshdp='/usr/bin/ssh -i "/Users/dpark/.ssh/ddp.key" -o StrictHostKeyChecking=no -l dpark'
alias scpdp='/usr/bin/scp -i "/Users/dpark/.ssh/ddp.key" -o StrictHostKeyChecking=no'
alias error_worker='cd /opt/apps/coi_workers && /opt/ve/coi_workers/bin/python error_worker.py'
alias inject_worker='cd /opt/apps/coi_workers && /opt/ve/coi_workers/bin/python inject_worker.py'
alias eventlog_worker='cd /opt/apps/coi_workers && /opt/ve/coi_workers/bin/python eventlog_worker.py'
alias trial_worker='cd /opt/apps/coi_workers && /opt/ve/coi_workers/bin/python trial_worker.py'
alias location_worker='cd /opt/apps/coi_workers && /opt/ve/coi_workers/bin/python location_worker.py'
alias elastic='elasticsearch -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias fuseki='cd /opt/jena-fuseki-0.2.7/ && ./fuseki-server --config config-prov.ttl'
alias shigoto='cd /opt/apps/shigoto && source /opt/ve/shigoto/bin/activate'
alias trial_indexer='cd /opt/apps/coi_workers && /opt/ve/coi_workers/bin/python trial_indexer.py'
alias trial_site_indexer='cd /opt/apps/coi_workers && /opt/ve/coi_workers/bin/python trial_site_indexer.py'
alias location_indexer='cd /opt/apps/coi_workers && /opt/ve/coi_workers/bin/python location_indexer.py'
