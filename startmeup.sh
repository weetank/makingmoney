#!/bin/sh
export FLASK_APP=moneymaker
export MONEYMAKER_SETTINGS=../settings.cfg

gunicorn -w 1 -b 0.0.0.0:5000 moneymaker:app