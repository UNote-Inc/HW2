# Design Decisions and Justifications
Routing followed this structure: `http://127.0.0.1:5000/<method>/<key>/<value>` to use key and value as url parameters.

We used a dictionary (hashmap) to simulate the key-value storage because it was the intuitive data structure to use for our purposes because it is already structured with keys and values.

We also made the keys and values strings for simplicity.

# Challenges and how we overcame them
We faced difficulty while using the testing script, primarily due to issues with the request methods. Initially, we used the requests.get() and requests.post() methods with the provided base URL. However, we had to modify the base URL to include the correct port number. At this point, our testing file still wouldn’t recognize the URL, so we revisited our implementation and realized that our route paths were inconsistent. We addressed this by updating our URL structure to include either /get/ or /post/ between the base URL and the input data, which resolved the problem.

We also had some trouble figuring out how to persist data and load from our persisted data on server startup. The issues lied in using a json object to store our data and then loading it also by using json.load(). This is where we figured that it may have been easier to take in a json object for our values where necessary.

# Assumptions:
For our server-side file that handles the input/output and methods, we made the assumption that all inputs would be of type string.

# Potential improvements and future features:
In the future we want to add support for multiple types of data and pass values in through the request bodies to better follow REST convention.

