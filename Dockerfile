# Use Ubuntu as the base image
FROM ghcr.io/puppeteer/puppeteer:latest

# Set non-interactive installation to avoid getting stuck on prompts
ARG DEBIAN_FRONTEND=noninteractive

# Set working directory
WORKDIR /stylifyme

# Add current directory
ADD . .

# Install NPM dependencies
RUN npm ci

# Expose port 80 to the outside once the container starts
EXPOSE 8888

ENV PORT=8888

# Start the application
CMD ["npm", "run", "start"]
