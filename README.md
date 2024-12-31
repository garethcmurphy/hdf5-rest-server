# HDF5 REST Server on Kubernetes 🗂️🌐  

This repository provides a setup to serve HDF5 files over a REST interface using Docker and Helm on Kubernetes. The server allows clients to query and retrieve HDF5 data through a scalable and containerized REST API.

---

## Features ✨  

- **HDF5 Data Access**: Serve HDF5 files over a RESTful interface.  
- **Containerized Deployment**: Dockerized application for portability and consistency.  
- **Kubernetes Ready**: Helm chart for scalable deployment on Kubernetes clusters.  

---

## Prerequisites 🛠️  

- **Docker** and **Docker Compose** installed.  
- **Kubernetes** cluster with **kubectl** access.  
- **Helm** installed on your local machine.  

---

## Installation  

### Local Setup with Docker  

1. Clone the repository:  
git clone https://github.com/your-username/hdf5-rest-server.git  
cd hdf5-rest-server  

2. Build the Docker image:  
docker build -t hdf5-rest-server .  

3. Run the Docker container:  
docker run -p 8080:8080 hdf5-rest-server  

4. Access the REST server at:  
http://localhost:8080  

---

### Kubernetes Deployment  

1. Clone the repository:  
git clone https://github.com/your-username/hdf5-rest-server.git  
cd hdf5-rest-server  

2. Deploy using Helm:  
helm install hdf5-server ./helm  

3. Verify the deployment:  
kubectl get pods  

4. Access the service:  
kubectl get svc hdf5-server  

---

## Usage 🔧  

### Query HDF5 Files  

Use tools like `curl` or Postman to query HDF5 data.  

Example:  
curl http://localhost:8080/api/v1/dataset?file=example.h5&dataset=temperature  

### Add New HDF5 Files  

Mount your HDF5 files into the container or Kubernetes volume as specified in the configuration.  

---

## File Structure 📂  

- `Dockerfile`: Docker build instructions.  
- `helm/`: Helm chart for Kubernetes deployment.  
- `server/`: REST server source code.  
- `README.md`: Documentation for the repository.  

---

## Contributing 🤝  

1. Fork the repository.  
2. Create a new branch:  
git checkout -b feature/your-feature  

3. Commit your changes:  
git commit -m "Add your feature"  

4. Push the branch:  
git push origin feature/your-feature  

5. Open a pull request.  

---

## License 📝  

This project is licensed under the MIT License. See the LICENSE file for details.

---

**Serve and access HDF5 data seamlessly with this REST server!** 🗂️🌐  
