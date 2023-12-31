Surazul bordados admin

## Dev

Just run docker: `docker-compose up`

Dev server runs in: http://localhost:7001/login

First run, ssh into docker container and run `seed` and `migrations`

If necessary, create an admin user while SSHd into the admin docker container and run:

`npx medusa user -e admin@medusa-test.com -p supersecret`
