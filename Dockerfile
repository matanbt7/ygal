# שלב ראשון: נשתמש בתמונה רשמית של פייתון
FROM python:3.10-slim

# נגדיר תיקיית עבודה
WORKDIR /app

# נעתיק את כל קבצי הפרויקט לתוך התמונה
COPY . .

# נתקין את כל הדרישות
RUN pip install --no-cache-dir -r requirements.txt

# נפתח את פורט 5000 (ברירת מחדל של Flask)
EXPOSE 5000

# נריץ את האפליקציה
CMD ["python", "app.py"]