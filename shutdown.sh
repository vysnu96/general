#!/bin/bash

sudo shutdown
curl -s -X POST  https://api.telegram.org/bot5739376283:AAGd3SUAy5h99ASUha8MPTPQ4UGtPlqyrdY/sendMessage -d chat_id=728206823 -d text="Hello! Your system is scheduled for shutdown:("
