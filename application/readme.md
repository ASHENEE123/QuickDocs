


---

```markdown
# Natural Language to SQL Conversion Project

This project enables users to input natural language queries (like “Show all customers”) and automatically converts them into SQL queries to fetch data from the database. It uses Flask as the backend framework, Google Generative AI for natural language processing, and SQLite for data storage.

---

## Folder Structure

```

application/
├── app.py # Flask backend server code
├── requirements.txt # Python dependencies
├── templates/ # Frontend HTML templates
├── screenshots/ # Screenshots of app usage

├── database/
│ ├── sampledata.sql # Sample data insertions
│ ├── schema.sql # Database schema creation
│ └── quick.py # Script to create and initialize database


├── nl_query/
│ ├── nl_query.txt # Sample natural language queries
│ ├── docs/ # Project documentation folder
│ │ ├── screenshots/ # Documentation screenshots
│ │ └── dummy_ocr/ # Additional resource folder   
````

---

## Setup Instructions

1. **Clone the repository and navigate into the application folder:**

   ```bash
   git clone[https://github.com/ASHENEE123/Assignment.git]
   cd your-repo-name/application
````

2. **Create and activate a Python virtual environment:**

   * On Windows:

     ```bash
     python -m venv venv
     venv\Scripts\activate
     ```

   * On macOS/Linux:

     ```bash
     python3 -m venv venv
     source venv/bin/activate
     ```

3. **Install required Python packages:**

   ```bash
   present in 
   pip install -r requirements.txt
   ```

4. **Create and initialize the SQLite database:**

   From the `database` folder, run:

   ```bash
   python quick.py
   ```
   define proper path  for sample.sql and schema.sql

   This will create the database schema and insert sample data.

5. **Set your Google Generative AI API key as an environment variable:**

   * On macOS/Linux:

     ```bash
     export GOOGLE_API_KEY="your_api_key_here"
     ```

   * On Windows (PowerShell):

     ```powershell
     setx GOOGLE_API_KEY "your_api_key_here"
     ```

6. **Ensure the database file created by `quick.py` is in the right path (adjust in `app.py` if needed).**

---

## How to Run the Application

1. Activate your virtual environment (if not already active).

2. Run the Flask backend:

   cd your_folder/application
   python app.py
   ```

3. Open your browser and visit:

   ```
   http://127.0.0.1:5000
   visit various routes like register,submit,dashboard and see results of nlp on nl-query-ui

4. Use the web interface to enter natural language queries and view database results.
---

## API Keys Needed

* This project uses the **Google Generative AI API** to convert natural language queries into SQL.

---

## Technologies Used

* Python 3
* Flask (backend web framework)
* Flask-CORS (handle cross-origin requests)
* Google Generative AI (natural language to SQL conversion)
* SQLite (lightweight database)
* HTML, CSS, JavaScript (frontend interface)

---

## Additional Notes

* Only **SELECT** SQL queries are allowed for security and safety.
* Refer to `nl_query/docs` for detailed documentation and additional resources.
* Screenshots demonstrating app usage are located in the `screenshots` folders

