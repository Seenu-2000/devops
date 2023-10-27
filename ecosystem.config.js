module.exports = {
  apps: [
    {
      name: 'my-node-app',  // Choose a unique name for your application
      script: 'nodescript.js',  // The main script file of your Node.js application
      cwd: '/var/www/myapp',  // The directory where your application is located
      instances: 1,  // Number of instances to run (can be increased for clustering)
      autorestart: true,  // Automatically restart the application if it crashes
      watch: false,  // Set to true if you want PM2 to watch for file changes and restart
      max_memory_restart: '300M',  // Maximum memory usage before restart
      error_file: 'logs/error.log',  // Log file for errors
      out_file: 'logs/out.log',  // Log file for standard output
      log_file: 'logs/combined.log',  // Combined log file (errors and standard output)
      merge_logs: true,  // Merge logs from different instances into one file
      env: {
        NODE_ENV: 'production',  // Set your environment variables here
        PORT: 3000,  // Set any other environment variables your app requires
      },
    },
  ],
};
