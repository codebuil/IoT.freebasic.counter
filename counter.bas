sub head()
	print("Content-type:plain-text")
	print
	print
	print
	print("<html><head><title>")
	print("counter")
	print("</title><head><body bgcolor='#008800'>")
end sub
sub body()
	dim s as string
	dim i as integer
	on error goto nextes
	open "0" for input as 1
	goto nextss
	nextes:
		open "0" for output as 1
		print #1,"0"
		close #1
		open "0" for input as 1
	nextss:
		line input #1,s
		close #1
		i=val(s)
		i=i+1
		print i
		open "0" for output as 1
		print #1,trim(str(i))
		close #1
end sub
sub tail()
	print("</body></html>");	
end sub

head
body
tail
