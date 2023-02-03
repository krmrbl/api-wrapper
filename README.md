# Calendarific API Wrapper
This mini project is intended for educational purposes only. You may check Calendarific's API documentation [here](https://calendarific.com/api-documentation).
## Getting Started
To use this API Wrapper, clone the repository in your local machine:
```ruby
$ git clone 'https://github.com/krmrbl/api-wrapper.git'
```
Then run: 
```ruby
$ bundle install
```
This installs the [rest-client](https://rubydoc.info/github/rest-client/rest-client/master) gem as well as its dependencies. The REST client initiates the API request and receives the response back via the API.

You can now start your server:
```ruby
$ rails s
```
## Usage
### Authentication
Your API key is used to authenticate you with Calendarific, and is required for every request to the API. To get a free account key, create a Calendarific account [here](https://calendarific.com/signup). After signing up, your API key can be retrieved from the [account page](https://calendarific.com/account).

To encrypt and store your API key, run:
```ruby
$ EDITOR='code --wait' rails credentials:edit
```
"code" inside the command above can be replaced by other editors.
Once the credentials file is generated, add your API key:
```ruby
calendarific:
  api_key: [YOUR API KEY]
```
Save your changes and close the file.
### Testing
At this point, you can now execute tests using [Postman](https://web.postman.co/) (provided that the rails server is on).
### Routes
Below are the available routes to test the API:
| **METHOD** | **DESCRIPTION**                                        | **ENDPOINT**                             |
|:----------:|--------------------------------------------------------|------------------------------------------|
| GET        | Get a list of holidays based on the parameters passed. | {url prefix}/api/holidays/:country/:year |
| GET        | Get a list of languages that Calendarific supports.    | {url prefix}/api/languages               |
| GET        | Get a list of countries that Calendarific supports.    | {url prefix}/api/countries               |
