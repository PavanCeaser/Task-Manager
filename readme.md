Creating a virtual environment
 >> virtualenv myenv 

activate
>> myenv\Scripts\activate

run
>> python app.py

# To run on Docker 
1. build
Run docker build -t my-flask-app . to build the Docker image.
2. start
Run docker run -p 5000:5000 my-flask-app to start the container.
