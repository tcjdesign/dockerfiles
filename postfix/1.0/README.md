# postfix - v1.0
Postfix is a free and open-source MTA
made by Wietse Venema and many others at http://www.postfix.org

<img src="http://www.postfix.org/mysza.gif" width="130" height="91">

What is Postfix? It is Wietse Venema's mail server that started life at IBM research as an alternative to the widely-used Sendmail program. Now at Google, Wietse continues to support Postfix.
Postfix attempts to be fast, easy to administer, and secure. The outside has a definite Sendmail-ish flavor, but the inside is completely different. 

Running postfix container: docker run --tty=true --detach=true --name=[name of your container] --publish=[port on your host]:25 jonasbonno/postfix:1.0
