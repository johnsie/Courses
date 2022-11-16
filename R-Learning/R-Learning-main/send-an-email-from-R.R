
#Code for some of the options at https://mailtrap.io/blog/r-send-email/
#Option 1 sendmailR


install.packages("sendmailR",repos="http://cran.r-project.org")


#Can't put the real smtp on Github
Server<-list(smtpServer= "smtp.example.io")


library(sendmailR)
from <- sprintf("<user@sender.com>","The Sender") # the sender’s name is an optional value
to <- sprintf("<user@recipient.com>")
subject <- "Test email subject"
body <- "Test email body"

sendmail(from,to,subject,body,control=list(smtpServer= "smtp.example.io"))




#####Send to multiple recipients
from <- sprintf("<user@sender.com>","The Sender")
to <-sprintf(c("<user@recipient.com>","<user2@recipient.com>", "<user3@recipient.com>")
subject <- "Test email subject"
body <- "Test email body"

sapply(to,function(x) sendmail(from,to=x,subject,body,control=list(smtpServer= "smtp.example.io"))





#Send and attachment
from <- sprintf("<user@sender.com>","The Sender")
to <- sprintf("<user@recipient.com>")
subject <- "Test email subject"
body <- "Test email body"
attachmentPath <-"C:/.../Attachment.png"
attachmentObject <-mime_part(x=attachmentPath,name=attachmentName)
bodyWithAttachment <- list(body,attachmentObject)

sendmail(from,to,subject,bodyWithAttachment,control=list(smtpServer= "smtp.example.io"))


##############OPTION 2 - mailR##############################


install.packages("mailR",repos="http://cran.r-project.org")


#Send and email 

library(mailR)
send.mail(from = "user@sender.com",
          to = "user@recipient.com",
          subject = "Test email subject",
          body = "Test emails body",
          smtp = list(host.name = "smtp.mailtrap.io", port = 25,
                      user.name = "********",
                      passwd = "******", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)


#Multi-recipients
library(mailR)
send.mail(from = "user@sender.com",
          to = c("Recipient 1 <user1@recipient.com>", "Recipient 2 <user@recipient.com>"),
          cc = c("CC Recipient <cc.user@recipient.com>"),
          bcc = c("BCC Recipient <bcc.user@recipient.com>"),
          replyTo = c("Reply to Recipient <reply-to@recipient.com>"),
          subject = "Test email subject",
          body = "Test emails body",
          smtp = list(host.name = "smtp.mailtrap.io", port = 25,
                      user.name = "********",
                      passwd = "******", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)
		  
		  
		  
#Attachment
library(mailR)
send.mail(from = "user@sender.com",
          to = c("Recipient 1 <user1@recipient.com>", "Recipient 2 <user@recipient.com>"),
          cc = c("CC Recipient <cc.user@recipient.com>"),
          bcc = c("BCC Recipient <bcc.user@recipient.com>"),
          replyTo = c("Reply to Recipient <reply-to@recipient.com>"),
          subject = "Test email subject",
          body = "Test emails body",
          smtp = list(host.name = "smtp.mailtrap.io", port = 25,
                      user.name = "********",
                      passwd = "******", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE,
          attach.files = c("./attachment.png", "https://dl.dropboxusercontent.com/u/123456/Attachment.pdf"),
          file.names = c("Attachment.png", "Attachment.pdf"), #this is an optional parameter
          file.descriptions = c("Description for Attachment.png", "Description for Attachment.pdf")) #this is an optional parameter
		  
#HTML Email
library(mailR)
send.mail(from = "user@sender.com",
          to = "user@recipient.com",
          subject = "Test email subject",
          body = "<html>Test <strong>email</strong> body</html>",
          smtp = list(host.name = "smtp.mailtrap.io", port = 25,
                      user.name = "********",
                      passwd = "******", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)		  
		  
#alternatibely use an html file by:
#body = "./Template.html",		  
		  




		  
		  
