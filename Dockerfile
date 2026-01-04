FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY promotion_gb_model.pkl .
COPY fastapiapppromotion.py .

EXPOSE 8080

CMD ["uvicorn", "fastapiapppromotion:app", "--host", "0.0.0.0", "--port", "8080"]
