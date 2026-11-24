#!/usr/bin/python3

import imaplib
import os
import subprocess

completed_process = subprocess.run(['gpg', '-dq', os.path.join(('/home/jd1705/.password-store/email/'), 'gmail.gpg')], check=True, stdout=subprocess.PIPE, encoding="utf-8");
password = completed_process.stdout[:-1]
obj = imaplib.IMAP4_SSL('imap.gmail.com', 993)
# Only put your email address below.
obj.login('soulbusterjd17@gmail.com', password)
obj.select()

print(len(obj.search(None, 'unseen')[1][0].split()))
