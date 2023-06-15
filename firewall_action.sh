firewall_action() {
    sudo iptables -F
    sudo iptables -P INPUT DROP
    sudo iptables -A INPUT -i lo -j ACCEPT
    sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

    sudo iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
    sudo iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
    sudo iptables -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT

    sudo iptables -A INPUT -m limit --limit 5/min -j LOG --log-prefix "Firewall: " --log-level 7
    echo "Regras Estabelicidas"
    touch registros.txt
    sudo iptables-save > registros.txt
}

firewall_action
