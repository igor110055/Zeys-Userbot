#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Zeys-Userbot https://github.com/Adit041011/Zeys-Userbot /home/zeysuserbot/ \
    && chmod 777 /home/zeysuserbot \
    && mkdir /home/zeysuserbot/bin/

COPY ./sample_config.env ./config.env* /home/zeysuserbot/

WORKDIR /home/zeysuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
