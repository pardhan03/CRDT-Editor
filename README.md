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

## 🚀 Frontend + Backend Deployment (Single Server)

This project uses a **single-server deployment strategy** where the React frontend is served directly from the backend server.

### 📦 Build Process

The frontend application is built using:

```bash
npm run build
```

This generates optimized static files (HTML, CSS, JavaScript) inside the `dist` folder.

---

### 📁 Integration with Backend

After building the frontend:

* The contents of the `dist` folder are moved to the backend's `public` directory.
* The backend (Node.js + Express) serves these files as static assets.

```js
app.use(express.static("public"));

app.get("*", (req, res) => {
  res.sendFile(path.resolve("public", "index.html"));
});
```

---

### ⚙️ How It Works

* The backend serves static frontend files.
* All routes fallback to `index.html`, enabling client-side routing.
* Both frontend and backend run on the **same port**.

---

### ✅ Advantages

* Single deployment (frontend + backend together)
* No CORS issues
* Simplified hosting and configuration
* Improved performance with static file serving

---

### 🏷️ Deployment Strategy Name

This approach is commonly known as:

* **Serving Static Assets from Backend**
* **Monolithic Deployment**
* **Single Server Deployment**

---

### 🌐 Access

Once deployed, the entire application can be accessed from a single URL:

```
http://your-domain.com
```

---

### 🧠 Note

This setup is ideal for production environments where you want a simple and efficient deployment without managing separate frontend and backend servers.

---
## 🐳 Docker Essentials Guide

A streamlined reference for managing Docker images and containers efficiently.

---

### 📦 1. Image Management

Quickly locate and manage your Docker images.

#### 🔍 List all images

```bash
docker images
```

#### 🔎 Search for a specific image

```bash
docker images | grep <image_name>
```

**Example:**

```bash
docker images | grep codesync
```

This helps you quickly find the required image version.

---

### 🚀 2. Running Containers

Spin up your application with proper configuration.

#### ▶️ Standard Run

```bash
docker run -p 3000:3000 codesync
```

#### ⚡ Run in Background (Detached Mode)

```bash
docker run -d -p 3000:3000 --name codesync-app codesync
```

#### 🏷️ Flags Explained

| Flag     | Description                                          |
| -------- | ---------------------------------------------------- |
| `-d`     | Runs the container in the background (detached mode) |
| `-p`     | Maps ports → `host:container`                        |
| `--name` | Assigns a custom name to the container               |

👉 Access your app at:

```
http://localhost:3000
```

---

### 📊 3. Monitoring & Status

Keep track of container activity.

#### 📌 View running containers

```bash
docker ps
```

#### 📌 View all containers (including stopped)

```bash
docker ps -a
```

#### 📜 View live logs

```bash
docker logs -f <container_id>
```

---

### 🛑 4. Stopping & Cleanup

Manage and clean up resources efficiently.

#### ⛔ Stop a container

```bash
docker stop <container_id>
```

#### 💥 Force kill a container

```bash
docker kill <container_id>
```

#### 🗑️ Remove a container

```bash
docker rm <container_id>
```

> ⚠️ Note: Container must be stopped before removal.

#### ❌ Remove an image

```bash
docker rmi <image_name>
```

---

### 🛠️ 5. Advanced Utilities

Additional powerful commands.

#### 🔍 Inspect container/image details

```bash
docker inspect <id>
```

#### 🔄 Restart a container

```bash
docker restart <container_id>
```

#### 🧹 Stop all running containers

```bash
docker stop $(docker ps -q)
```

---

### 🧠 Tip

Use meaningful container names with `--name` to make debugging and monitoring much easier in real-world projects.
