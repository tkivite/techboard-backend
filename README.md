# Techboard
An API only ruby on rails application for serving a modern front-end application. 
This guide assumes you have setup your ruby development environment as well as postgreSQL on your PC
You may find this link useful: [how-to-set-up-ruby-on-rails-with-postgres](https://www.digitalocean.com/community/tutorials/how-to-set-up-ruby-on-rails-with-postgres)
# Environemnt
>Ruby 2.4.5 
>
>Rails 5.2.2

# Project Setup

>$ rails new techboard --api -T --database=postgresql


Note that we're using the --api argument to tell Rails that we want an API application and -T to exclude Minitest 
the default testing framework. 

# Dependencies

Load your libraries to your gemfile (I loaded an existing gemfile which has almost all the libraries I will need for my application)

>rake db:setup 

>rails g scaffold User firstname:string lastname:string email:string mobile:string gender:string idnumber:string active_status:boolean password_digest:string password:string role:text




