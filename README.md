# fakeserver
Server written in ruby to test REST endpoint's.
Follow this instructions to install (only in portuguese for now):

https://alissonpedrina.com/2018/10/26/fakeserver-com-ruby/

Or follow this instructions bellow:

**Install**

Clone the project:
```	
https://github.com/apedrina/fakeserver.git
```

Install ruby:
```	
sudo apt install ruby-full
```
Install bundler:
```	
sudo gem install bundler
```
In the root of application (same place of Gemfile) execute the bundler:
```	
sudo bundle install
```
**Execute**

Run:
```	
./start.sh
```
**Accessing**

```	
http://localhost:4567/api/incidente/1
```

