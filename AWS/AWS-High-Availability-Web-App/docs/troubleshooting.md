# Troubleshooting

## Verify NGINX

```bash
sudo systemctl status nginx
```

## Verify Website

```bash
curl localhost
```

## Verify Load Balancer

```bash
curl http://<ALB-DNS-NAME>
```

## Common Checks

* Confirm NGINX is running.
* Confirm port 80 is open in Security Groups.
* Confirm Target Group health checks are passing.
* Confirm both EC2 instances are registered with the Target Group.

## Resolution

After verifying NGINX, Security Groups, and Target Group health checks, the website was successfully accessible through the Application Load Balancer.

```
```
