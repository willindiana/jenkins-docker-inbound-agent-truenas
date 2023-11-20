FROM jenkins/inbound-agent as agent
 [...]
ENV TZ=Asia/Shanghai
 [...]
RUN ln -snf /usr/share/zoneinfo/"${TZ}" /etc/localtime && echo "${TZ}" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata \
 [...] 

RUN apt-get update && \
    apt-get install -y git python3 \
