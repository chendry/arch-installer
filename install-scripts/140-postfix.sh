cat <<-END >> /mnt/etc/postfix/main.cf
relayhost = email-smtp.us-east-1.amazonaws.com:587
smtp_sasl_auth_enable = yes
smtp_sasl_security_options = noanonymous
smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd
smtp_use_tls = yes
smtp_tls_security_level = encrypt
smtp_tls_note_starttls_offer = yes
END

chmod 600 /mnt/etc/postfix/sasl_passwd.db

sudo arch-chroot /mnt systemctl enable postfix
