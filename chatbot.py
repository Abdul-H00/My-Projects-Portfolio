import tkinter as tk
from tkinter import scrolledtext
import nltk
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

nltk.download('punkt', quiet=True)

# FAQ Data
faqs = {
    "What is artificial intelligence?": "Artificial Intelligence (AI) is the simulation of human intelligence by machines.",
    "What is machine learning?": "Machine Learning is a subset of AI where machines learn from data automatically.",
    "What is deep learning?": "Deep Learning is a type of machine learning using neural networks with many layers.",
    "What is Python?": "Python is a popular programming language widely used in AI and data science.",
    "What is a neural network?": "A neural network is a system inspired by the human brain used in AI models.",
    "What is data science?": "Data science is the field of analyzing and extracting insights from large datasets.",
    "What is NLP?": "NLP stands for Natural Language Processing — it helps computers understand human language.",
    "What is computer vision?": "Computer vision enables machines to interpret and understand visual information.",
    "What is CodeAlpha?": "CodeAlpha is a software development company offering internship programs.",
    "Who created you?": "I am an FAQ Chatbot created using Python and NLP techniques.",
    "What can you do?": "I can answer questions related to AI, ML, Python, and technology topics.",
    "What is a chatbot?": "A chatbot is a program that simulates conversation with human users.",
    "What is an algorithm?": "An algorithm is a step-by-step set of instructions to solve a problem.",
    "What is big data?": "Big data refers to extremely large datasets that require special tools to process.",
    "What is cloud computing?": "Cloud computing delivers computing services over the internet.",
}

questions = list(faqs.keys())
answers = list(faqs.values())

vectorizer = TfidfVectorizer()
question_vectors = vectorizer.fit_transform(questions)

def get_response(user_input):
    user_vec = vectorizer.transform([user_input])
    similarities = cosine_similarity(user_vec, question_vectors)
    best_match = similarities.argmax()
    score = similarities[0][best_match]
    if score < 0.2:
        return "Sorry, I don't understand. Please ask about AI or technology topics!"
    return answers[best_match]

def send_message():
    user_msg = entry.get().strip()
    if not user_msg:
        return
    chat_box.config(state=tk.NORMAL)
    chat_box.insert(tk.END, f"You: {user_msg}\n", "user")
    response = get_response(user_msg)
    chat_box.insert(tk.END, f"Bot: {response}\n\n", "bot")
    chat_box.config(state=tk.DISABLED)
    chat_box.yview(tk.END)
    entry.delete(0, tk.END)

# Window
root = tk.Tk()
root.title("AI FAQ Chatbot")
root.geometry("650x500")
root.configure(bg="#1e1e2e")

tk.Label(root, text="🤖 AI FAQ Chatbot",
         font=("Arial", 18, "bold"),
         bg="#1e1e2e", fg="#cdd6f4").pack(pady=10)

chat_box = scrolledtext.ScrolledText(root, state=tk.DISABLED,
                                      height=20, width=70,
                                      font=("Arial", 10),
                                      bg="#313244", fg="#cdd6f4",
                                      insertbackground="white")
chat_box.tag_config("user", foreground="#89b4fa")
chat_box.tag_config("bot", foreground="#a6e3a1")
chat_box.pack(pady=5)

frame = tk.Frame(root, bg="#1e1e2e")
frame.pack(pady=5)

entry = tk.Entry(frame, width=50, font=("Arial", 11),
                 bg="#313244", fg="#cdd6f4",
                 insertbackground="white")
entry.grid(row=0, column=0, padx=5)
entry.bind("<Return>", lambda e: send_message())

tk.Button(frame, text="Send 📨",
          command=send_message,
          bg="#89b4fa", fg="#1e1e2e",
          font=("Arial", 11, "bold"),
          padx=10).grid(row=0, column=1)

root.mainloop()