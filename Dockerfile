FROM alpine:3.14

# Install curl, which will be used to send the SMS
RUN apk add --no-cache curl

# Copy the script into the container
COPY run.sh /run.sh

# Make the script executable
RUN chmod +x /run.sh

# Define the entry point for the add-on
CMD [ "/run.sh" ]
