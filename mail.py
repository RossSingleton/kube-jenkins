import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

MY_ADDRESS = ''
PASSWORD = ''


def main():
    # set up the SMTP server
    s = smtplib.SMTP(host='aspmx.l.google.com', port=25)
    s.starttls()
    # s.login(MY_ADDRESS, PASSWORD)

    msg = MIMEMultipart()       # create a message

    # setup the parameters of the message
    msg['From'] = MY_ADDRESS
    msg['To'] = ''
    msg['Subject'] = "This is TEST"

    # add in the message body
    msg.attach(MIMEText('yeet', 'plain'))

    # send the message via the server set up earlier.
    print(msg)
    s.send_message(msg)
    del msg

    # Terminate the SMTP session and close the connection
    s.quit()


if __name__ == '__main__':
    main()
