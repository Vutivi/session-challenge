# README

This is a project to investigate why records pulls faster on rails when the request is made from the controller and not from the helper

* Ruby version: 2.6.3
* Rails version: 5.1.7


* How to run the test suite

After setting up your project and database run to import dummy data:

`rake db:seed`


* Finding

It is the pagination, the call made from the controller was not paginated
