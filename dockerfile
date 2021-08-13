FROM Ubuntu:20.04.2

VOLUME [ "var/lib/mysql" ]


RUN apt update && apt install sudo

RUN apt install -y cron

RUN apt install -y vim

RUN apt install -y acl


ENV genuser_PATH "home/temp/dockerbuild/genuser.sh"

ENV permit_PATH "home/temp/dockerbuild/permit.sh"

ENV schedule_PATH "home/temp/dockerbuild/schedule.sh"

ENV attendance_PATH "home/temp/dockerbuild/attendance.sh"

ENV future_PATH "home/temp/dockerbuild/future.txt"

ENV genMoM_PATH "home/temp/dockerbuild/genMoM.sh"

ENV getMoM_PATH "home/temp/dockerbuild/getMoM.sh"

ENV initDB_PATH "home/temp/dockerbuild/initDB.sh"

ENV clearDB_PATH "home/temp/dockerbuild/clearDB.sh"

ENV atnlog_PATH "home/temp/dockerbuild/attendance.log"


ADD ./genuser.sh ${genuser_PATH}

ADD ./permit.sh ${permit_PATH}

ADD ./schedule.sh ${schedule_PATH}

ADD ./attendance.sh ${attendance_PATH}

ADD ./future.txt ${future_PATH}

ADD ./attendence.log ${atnlog_PATH}

ADD ./genMoM.sh ${genMoM_PATH}

ADD ./getMoM.sh$ {getMoM_PATH}

ADD ./initDB.sh$ {initDB_PATH}

ADD ./clearDB.sh ${clearDB_PATH}


RUN chmod + ${genuser_PATH}

RUN chmod + ${permit_PATH}

RUN chmod + ${schedule_PATH}

RUN chmod + ${attendance_PATH}

RUN chmod + ${genMoM_PATH}

RUN chmod + ${getMoM_PATH}

RUN chmod + ${initDB_PATH}

RUN chmod + ${clearDB_PATH}

RUN bash ${genuser_PATH}}

RUN bash ${permit_PATH}

RUN echo Done..







