# 🚀 CodeSync – Real-Time Collaborative Code Editor

CodeSync is a real-time collaborative code editor that allows multiple users to write and edit code together simultaneously. It uses WebSockets for real-time communication and CRDT (Y.js) for conflict-free data synchronization.

---

## ✨ Features

- ⚡ Real-time code synchronization
- 👥 Multi-user collaboration
- 🔄 Conflict-free editing (CRDT with Y.js)
- 🧠 Monaco Editor (VS Code-like experience)
- 🌐 WebSocket communication using Socket.io
- 💻 Multi-language support
- 🐳 Docker support for easy setup

---

## 🏗️ Tech Stack

### Frontend
- React.js
- Monaco Editor

### Backend
- Node.js
- Express.js
- Socket.io

### Real-Time Engine
- Y.js (CRDT)

### DevOps
- Docker

---

## 🧠 How It Works

1. Users connect to a central server using Socket.io.
2. Each user edits code in Monaco Editor.
3. Changes are sent to the server in real-time.
4. Server broadcasts updates to all users.
5. Y.js ensures conflict-free merging of changes.

---

🐳 Docker Essentials Guide
A streamlined reference for managing images and containers efficiently.

📦 1. Image Management
Quickly locate and manage your Docker images.

List all images:

docker images
Search for a specific image:

docker images | grep <image_name>
Example: docker images | grep codesync helps you find your image version quickly.

🚀 2. Running Containers
Spin up your applications with proper port mapping.

Standard Run:

docker run -p 3000:3000 codesync
Run in Background (Detached):

docker run -d -p 3000:3000 --name codesync-app codesync
Flag Breakdown:
| Flag | Meaning |
| :--- | :--- |
| -d | Detached mode: Runs the container in the background. |
| -p | Port mapping: Host Port : Container Port. |
| --name | Assigns a custom name to your container for easier tracking. |

👉 Access your app at: http://localhost:3000

📊 3. Monitoring & Status
Keep an eye on what’s running.

View running containers:

docker ps
View all containers (including stopped):

docker ps -a
View live logs:

docker logs -f <container_id>
🛑 4. Stopping & Cleanup
Commands to halt and remove resources.

Stop a container:

docker stop <container_id>
Force kill a container:

docker kill <container_id>
Remove a container:

docker rm <container_id>
Note: Container must be stopped before removal.

Remove an image:

docker rmi <image_name>
🛠️ 5. Advanced Utilities
Deep dives and bulk actions.

Inspect details: Get low-level JSON info about a container or image.

docker inspect <id>
Restart a container:

docker restart <container_id>
Stop all running containers:

docker stop $(docker ps -q)