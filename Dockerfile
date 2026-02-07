# adding a base image 
FROM python:3.11-slim

# define working directory
WORKDIR /app

# copy all the requiremeents 
COPY requirements.txt .

# now using run cmnd install all the requirements 
RUN pip install --no-cache-dir -r requirements.txt

# copy all the necessary files 
COPY . .

#  expose the port 
EXPOSE 8080

#  run the final executable cmnd
CMD [ "python","main.py" ]

