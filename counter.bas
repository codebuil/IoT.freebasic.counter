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
	dim ss as string
	dim sss as string
	dim i as integer
	ss=environ("QUERY_STRING")
	sss="zzz"+ss
	on error goto nextes
	open sss for input as 1
	goto nextss
	nextes:
		on error goto exits
		open sss for output as 1
		print #1,"0"
		close #1
		open sss for input as 1
	nextss:
		on error goto exits
		line input #1,s
		close #1
		i=val(s)
		i=i+1
		print i
		open sss for output as 1
		print #1,trim(str(i))
		close #1
	exits:
end sub
sub tail()
	print("</body></html>");	
end sub

head
body
tail
