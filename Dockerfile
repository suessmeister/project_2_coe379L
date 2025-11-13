FROM python:3.10-slim

WORKDIR /app

# Copy server and requirements
COPY server.py /app/
COPY requirements.txt /app/

# Copy model folder exactly as server.py expects
COPY model /app/model

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3", "server.py"]
