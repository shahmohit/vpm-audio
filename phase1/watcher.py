import os
import time

wpath = os.path.join('tmp','keyword.txt')
spath = os.path.join('tmp','search.txt')
bpath = os.path.join('tmp','blog.txt')
mpath = os.path.join('tmp','test.mp3')
tpath = os.path.join('tmp','tags.txt')

sflag = True
bflag = True
search = False
blog = False
runflag = True
while runflag:
    sflag = os.path.exists(wpath)
    bflag = os.path.exists(bpath)
    if ((sflag==True) & (search==False)):
        os.system('nohup ./search_step2.sh > /dev/null 2> /dev/null < /dev/null &')
        search = True
    if ((os.path.exists(spath)) and (search == True)):
	time.sleep(5)
	sflag = False
        search = False
    if ((bflag==True) & (blog==False)):
        os.system('nohup ./blog_step2.sh > /dev/null 2> /dev/null < /dev/null &')
        blog = True
    if ((os.path.exists(tpath)) and (blog == True)):
	time.sleep(5)
	bflag = False
        blog = False
