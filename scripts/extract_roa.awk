#!/bin/awk

BEGIN {
	ipv4=0
}

/addressFamily: 1/ { ipv4=1 }
/addressFamily: [^1]/ {ipv4=0}

#tasID/	{ print $2 }

ipv4==1 && /IPaddress/	{
	print $2
	}

END {

}
