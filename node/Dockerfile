FROM node:latest
ADD start.sh /start.sh
RUN chmod 755 /start.sh
ENV DATABASE_HOST=10.0.10.2
EXPOSE 8123
CMD ["/start.sh"]
