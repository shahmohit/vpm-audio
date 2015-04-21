import os
import time

wpath = os.path.join('tmp','keyword.txt')
spath = os.path.join('tmp','search.txt')

sflag = True
search = False
runflag = True
while runflag:
    sflag = os.path.exists(wpath)
    if ((sflag==True) & (search==False)):
        os.system('nohup ./search_step2.sh > /dev/null 2> /dev/null < /dev/null &')
        search = True
    if ((os.path.exists(spath)) and (search == True)):
	time.sleep(5)
	sflag = False
        search = False
