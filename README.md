# Stylify Me

Forked from [Stylify Me](https://github.com/micmro/Stylify-Me)

An API to extract colors and fonts from websites.

## Deployment

Build the docker image:

```
docker build . -t stylify-api
```

Run the image:

```
docker run -p 8888:8888 -it stylify-api
```

Visit:

http://localhost:8888/query?url=http://lumen5.com


### Frontend

This repo only contains the web service, you can query it from the front end like this:

```javaScript
var urlToQuery = encodeURIComponent("http://google.com");

$.ajax({
	dataType: "jsonp",
	url: "http://youreServiceUrl.com/query?url="+ urlToQuery,
	success: function(data){
		if(data["error"]){
			alert("Error: " + data["error"]);
			return;
		}
		//PROCESS the result
	},
	timeout : 10000
}).fail(function(){
	alert("Could not query site, the service might be down, please try again later.");
});
```
