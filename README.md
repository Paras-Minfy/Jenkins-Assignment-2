# 🛠️ Jenkins Assignment 2 - Python App

This project contains a simple Python application with unit tests, containerized using Docker, and integrated with a Jenkins pipeline for CI/CD.

## 🔧 Features

- Basic Python app with testable logic
- Unit tests using `unittest`
- Dockerized for consistent deployment
- Jenkins pipeline to build, test, and push Docker image

## 📁 Project Structure

```

Jenkins-Assignment-2/
├── apps/
│    ├── __init__.py
│    └── main.py
├── tests/
│    ├── __init__.py
│    └── test_main.py
├── Dockerfile
├── Jenkinsfile
├── requirements.txt
└── readme.md

````

## ▶️ How to Run

```bash
python apps/main.py
````

## 📦 Jenkins Pipeline Overview

* Clones repository
* Builds Docker image
* Runs unit tests
* Pushes image to Docker Hub (`main` branch only)
