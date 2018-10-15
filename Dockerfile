FROM sporky/basepython
LABEL maintainer "b.imhoff@f5.com"

RUN git clone https://github.com/weetank/makingmoney.git
WORKDIR /makingmoney

RUN pip install -r requirements.txt

CMD ["./startmeup.sh"]