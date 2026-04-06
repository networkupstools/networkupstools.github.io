#!/bin/sh

generate() {
	P="$1"
	U="Configuration_notes.html#$P"
	printf '<HTML><HEAD><meta http-equiv="refresh" content="0; url=%s"/></HEAD><BODY>Please see <a href=%s>%s</a> section.</BODY></HTML>\n' "$U" "$U" "$P" > "$P.html"
}

for S in UPS_shutdown BigServers ; do generate $S; done

