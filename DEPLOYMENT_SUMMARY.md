# Event Management Fullstack - Kubernetes Deployment Summary

## ✅ Deployment Status

### Docker Images Built:
- **Frontend**: `eventmgt/frontend:latest` (673MB)
- **Backend**: `eventmgt/backend:latest` (751MB)

### Kubernetes Deployments:
- **MySQL**: 1 replica (Database)
- **Backend**: 2 replicas (Spring Boot API)
- **Frontend**: 2 replicas (React App)

### Services Exposed:
- **Frontend**: NodePort 30082 → http://localhost:30082
- **Backend**: NodePort 30083 → http://localhost:30083
- **MySQL**: ClusterIP (internal only, port 3306)

## 📁 Project Structure

```
Exam/
├── frontend/              # React frontend application
│   └── Dockerfile        # Frontend Dockerfile
├── backend/              # Spring Boot backend application
│   └── Dockerfile        # Backend Dockerfile
├── templates/            # Original templates from GitHub
│   ├── Dockerfile.frontend
│   ├── Dockerfile.backend
│   └── fullstack-deployment.yaml
└── k8s-deployment.yaml   # Kubernetes deployment configuration
```

## 🚀 Quick Commands

### Check Deployment Status:
```powershell
kubectl get deployments
kubectl get pods
kubectl get svc
```

### View Logs:
```powershell
kubectl logs -f deployment/frontend
kubectl logs -f deployment/backend
kubectl logs -f deployment/mysql
```

### Access Application:
- **Frontend**: http://localhost:30082
- **Backend API**: http://localhost:30083

### Restart Deployments:
```powershell
kubectl rollout restart deployment/frontend
kubectl rollout restart deployment/backend
```

### Delete Deployment (if needed):
```powershell
kubectl delete -f k8s-deployment.yaml
```

## 📝 Notes

- MySQL database name: `ecommerce`
- MySQL root password: `root`
- Backend connects to MySQL via service name `mysql:3306`
- Frontend connects to backend via service name `backend:8080`
- All services are running in the `default` namespace

## 🔧 Troubleshooting

If pods are not starting:
1. Check pod status: `kubectl get pods`
2. Check pod logs: `kubectl logs <pod-name>`
3. Check events: `kubectl get events`
4. Describe pod: `kubectl describe pod <pod-name>`

If services are not accessible:
1. Verify NodePort services: `kubectl get svc`
2. Check if ports 30082 and 30083 are available
3. Verify pod labels match service selectors

