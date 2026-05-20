Flask-Redis-Demo: 
A simple Flask web app using Redis to store and display the number of visitors. This project is part of my DevOps-Portfolio under the Docker-Containers module.

Project Overview:
This project demonstrates a multi-container setup with Flask and Redis. The app tracks how many times the homepage has been visited and displays the visitor count dynamically.

Steps Taken
Step 1: Project Setup
Created the project folder:
mkdir -p Docker-Containers/Flask-Redis-Demo
cd Docker-Containers/Flask-Redis-Demo

Step 2: Initial Files
Created essential files and folders:
README.md
requirements.txt
app/app.py
Dockerfile
docker-compose.yml
screenshots/
Added all files to Git, committed, and pushed to GitHub.


Step 3: Writing the Code
Used nano editor to write code in the correct files:
Flask app logic in app/app.py
Python dependencies in requirements.txt
Docker image instructions in Dockerfile
Multi-container orchestration in docker-compose.yml
Committed and pushed all updates to GitHub.


Step 4: Running Docker
Initially ran: docker compose up -d
Only the welcome page displayed; visitor count did not appear.
Rebuilt the image to force Docker to use updated code: docker compose build --no-cache
docker compose up -d
After rebuilding, the Flask app displayed the visitor count correctly with Redis.


Step 5: Screenshots
Captured screenshots of:
Flask app showing the visitor count
Docker containers running
Added screenshots to screenshots/ folder and pushed to GitHub.

Outcome:
Flask + Redis multi-container app is fully functional.
Visitor count increments dynamically.
Project is fully documented and saved in GitHub for portfolio and interview purposes.
