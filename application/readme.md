
Setup Instructions
To get the project running on your local machine, follow these steps:

Clone the repository from GitHub using the command:
git clone https://github.com/your-username/your-repo-name.git

Navigate into the project folder:
cd your-repo-name

Create a virtual environment (recommended to keep dependencies isolated):

On Windows:
python -m venv venv
venv\Scripts\activate

On macOS/Linux:
python3 -m venv venv
source venv/bin/activate

Install required packages:
pip install -r requirements.txt

Set up environment variables for API keys (see below).

Make sure your SQLite database file is present in the project folder or configured correctly.

How to Run the Application
After setup and activating the virtual environment, run the Flask app using:
python app.py

By default, Flask will start the server locally at:
http://127.0.0.1:5000

Open this address in your web browser to access the application’s user interface.

Use the web form to enter natural language queries and get results from the database.

Any API Keys Needed
This project uses Google Generative AI API to convert natural language into SQL queries.

You will need to obtain an API key from Google Cloud Console.

Important: Do not share or commit your actual API keys to the repository.

Instead, configure the key securely in your environment variables or a secure config file.

Example environment variable setup (Linux/macOS):
export GOOGLE_API_KEY="your_api_key_here"

Or set the key programmatically in your code (not recommended for public repos):

python
Copy
Edit
genai.configure(api_key="your_api_key_here")
Technologies Used
Python 3: The programming language used for the backend.

Flask: A lightweight web framework for building the API and server.

Flask-CORS: To allow cross-origin requests from frontend to backend.

Google Generative AI: AI service to convert natural language queries into SQL statements.

SQLite: Lightweight file-based database system storing your data.

HTML, CSS, JavaScript: Frontend technologies used for building the user interface.
