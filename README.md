# csharpLS

**csharpLS** is a simple console application built in C# that serves as a foundation for distributed programming projects. This application is dockerized to make it easy to deploy and run in any environment.

## Project Structure

The basic structure of the project is as follows:
```
csharpLS/ 
│ 
├── Program.cs # Main application code in C# 
├── csharpLS.csproj # Project configuration file 
├── Dockerfile # Dockerfile to build the container image 
└── README.md # Project documentation
```

### Requirements

To run this project locally or inside a Docker container, you need to have the following:

1. **.NET SDK 8.0 or higher**
2. **Docker** (if you want to run in a container)
3. **Git** (to clone the repository)

### Local Installation and Execution

#### 1. Clone the Repository

Clone the repository using Git:

```bash
git clone https://github.com/lessalcu/csharpLS.git
cd csharpLS
```

#### 2. Run the Application
Run the application locally with the following command:

```bash
dotnet run
```
You should see the message Hello World from C#, Lesly Salas SI08! in the console.

### Docker Hub Execution Manual
#### 1. Download the Image
To download the image from Docker Hub, run:

```bash
docker pull lssalas/csharpls:latest
```

#### 2. Run the Container
Once the image is downloaded, run the container:

```bash
docker run lssalas/csharpls:latest
```
This will run the console application and display the message in the container's terminal.

### Notes
Make sure Docker is running before running the container.
If you have problems running the application in Docker, verify that the container was built correctly and that the DLL file is in the expected location.
### Credits
Project developed by Lesly Salas (https://github.com/lessalcu).