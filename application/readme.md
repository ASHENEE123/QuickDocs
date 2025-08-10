
Got it! Here’s a README.md tailored exactly to your folder structure and files, organized clearly and human-friendly:

---

```markdown
# Natural Language to SQL Conversion Project

This project enables users to input natural language queries (like “Show all customers”) and automatically converts them into SQL queries to fetch data from the database. It uses Flask as the backend framework, Google Generative AI for natural language processing, and SQLite for data storage.

---

## Folder Structure

```


````

---

## Setup Instructions

1. **Clone the repository and navigate into the application folder:**

   ```bash
   git clone https://github.com/your-username/your-repo-name.git
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
   pip install -r requirements.txt
   ```

4. **Create and initialize the SQLite database:**

   From the `database` folder, run:

   ```bash
   python quick.py
   ```

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

   ```bash
   python app.py
   ```

3. Open your browser and visit:

   ```
   http://127.0.0.1:5000
   ```

4. Use the web interface to enter natural language queries and view database results.

---

## API Keys Needed

* This project uses the **Google Generative AI API** to convert natural language queries into SQL.
* Obtain your API key from Google Cloud Console.
* **Do not commit your API keys to the repository.** Use environment variables or secure configuration.

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
* Screenshots demonstrating app usage are located in the `screenshots` folder.

---

## License

This project is licensed under the MIT License.

---

*Thank you for exploring this project! Feel free to raise issues or contribute.*

```

---

Would you like me to help you prepare the documentation file inside `nl_query/docs` or add example screenshots with markdown for your README?
```
