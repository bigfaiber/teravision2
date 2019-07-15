# README


* Ruby version: 2.5.1

* Database creation: rails db:create, rails db:migrate

* Services (job queues, httparty, nokogiri)


Para utilizar el api:

● curl -X POST -d "url=https://google.com" http://localhost/url.json
o Should return JSON with a short URL or errors
● curl http://localhost/top.json
o Should return JSON with the top 100 URLs
● curl -I http://localhost/abc
o Should show the URL that the app is redirecting you to

