#Base image
FROM python:3.8

#Set the working dir inside the container
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the application code into the contianer
COPY . .

# Expose the port of the flask application will be listening to 
EXPOSE 5000

# Set env var, if needed
# ENV MY_ENV_VAR=value 

# Run the flask applcation 
CMD ["python", "app.py"]


