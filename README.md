# README


* Ruby version: 2.5.1

* Database creation: rails db:create, rails db:migrate

* Services (job queues, httparty, nokogiri)


Para utilizar el api:

● curl -X POST -d "url=https://google.com" https://elegant-gerard-95163.herokuapp.com/url.json
o Should return JSON with a short URL or errors
● curl https://elegant-gerard-95163.herokuapp.com/top.json
o Should return JSON with the top 100 URLs
● curl -I https://elegant-gerard-95163.herokuapp.com/abc
o Should show the URL that the app is redirecting you to

