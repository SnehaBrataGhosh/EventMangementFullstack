Write-Host "=== Kubernetes Deployment Status ===" -ForegroundColor Green
Write-Host ""

Write-Host "Deployments:" -ForegroundColor Yellow
kubectl get deployments

Write-Host "`nPods:" -ForegroundColor Yellow
kubectl get pods

Write-Host "`nServices:" -ForegroundColor Yellow
kubectl get svc

Write-Host "`n=== Access URLs ===" -ForegroundColor Green
Write-Host "Frontend: http://localhost:30082" -ForegroundColor Cyan
Write-Host "Backend: http://localhost:30083" -ForegroundColor Cyan
Write-Host ""
Write-Host "To get service URLs, run:" -ForegroundColor Yellow
Write-Host "  kubectl get svc frontend" -ForegroundColor White
Write-Host "  kubectl get svc backend" -ForegroundColor White

