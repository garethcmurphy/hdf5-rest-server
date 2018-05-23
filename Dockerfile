# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Install git, gcc, and some other diagnostic utilities
RUN apt-get update -qq 
RUN apt-get -y install gcc 
RUN apt-get -y install git
RUN apt-get -y install iputils-ping curl

# Install numpy and any other packages specified in requirements.txt
COPY requirements.txt /app/requirements.txt 
RUN pip install -U pip
RUN pip install numpy 
RUN pip install -r requirements.txt

# Add the hdf5-json package, choose a specific branch
RUN git clone https://gitlab.com/MAXIV-HDF5/hdf5-json.git
RUN cd hdf5-json; \  
    git checkout demo-version; \
    python setup.py install --force;

# And h5serv, choose a specific branch
RUN git clone https://gitlab.com/MAXIV-HDF5/h5serv.git
RUN cd h5serv ; \
    git checkout docker-demo-version; 

# Make ports available to the world outside this container
EXPOSE 9443

# Run app.py when the container launches
CMD ["python", "h5serv/server/app.py"]
