httcodemon.sh
```
#!/bin/bash
# checks every 60 seconds.
# output format http code then count - http code

watch -n 60 "awk '{ print \$9 }' "$1" | sort -n | uniq -c | awk -v char=\"http code \" '{ print char \$2\": \" \$1 }'"
```
