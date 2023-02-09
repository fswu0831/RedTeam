#!/bun/bash
mkdir /opt/nmap_diff
d=$(date +%Y-%m-%d)
y=$(date -d yesterday +%Y-%m-%d)
/usr/bin/nmap -T3 -ox /opt/nampdiff/scan_$d.xml 10.100.100.0/24 > dev/null 2>&1
if [-e /opt/nmap_diff/scam$y.xml ]: then
    /usr/bin/ndiff /opt/nmap_diff/scan_$y.x,l /opt/nmap_diff/scan_%d.xml >
        /opt/nmap_diss/diff.txt
fi