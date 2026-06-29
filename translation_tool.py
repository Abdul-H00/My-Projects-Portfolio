import tkinter as tk
from tkinter import ttk, messagebox
from deep_translator import GoogleTranslator

LANGUAGES = {
    'auto': 'Auto Detect',
    'en': 'English',
    'ur': 'Urdu',
    'hi': 'Hindi',
    'ar': 'Arabic',
    'fr': 'French',
    'de': 'German',
    'es': 'Spanish',
    'zh-CN': 'Chinese',
    'tr': 'Turkish',
    'ru': 'Russian',
    'ja': 'Japanese',
    'ko': 'Korean',
    'it': 'Italian',
    'pt': 'Portuguese',
}

def translate_text():
    text = input_text.get("1.0", tk.END).strip()
    if not text:
        messagebox.showwarning("Warning", "Please enter text to translate!")
        return
    src = src_var.get()
    tgt = tgt_var.get()
    try:
        translated = GoogleTranslator(source=src, target=tgt).translate(text)
        output_text.delete("1.0", tk.END)
        output_text.insert(tk.END, translated)
    except Exception as e:
        messagebox.showerror("Error", f"Translation failed: {str(e)}")

def copy_text():
    root.clipboard_clear()
    root.clipboard_append(output_text.get("1.0", tk.END))
    messagebox.showinfo("Copied!", "Translation copied to clipboard!")

def clear_all():
    input_text.delete("1.0", tk.END)
    output_text.delete("1.0", tk.END)

# Window
root = tk.Tk()
root.title("Language Translation Tool")
root.geometry("700x520")
root.configure(bg="#1e1e2e")

# Title
tk.Label(root, text="🌐 Language Translation Tool",
         font=("Arial", 18, "bold"),
         bg="#1e1e2e", fg="#cdd6f4").pack(pady=10)

# Language Frame
lang_frame = tk.Frame(root, bg="#1e1e2e")
lang_frame.pack(pady=5)

lang_codes = list(LANGUAGES.keys())
lang_names = list(LANGUAGES.values())

tk.Label(lang_frame, text="From:", bg="#1e1e2e",
         fg="#cdd6f4", font=("Arial", 11)).grid(row=0, column=0, padx=5)
src_var = tk.StringVar(value="en")
ttk.Combobox(lang_frame, textvariable=src_var,
             values=lang_codes, width=12).grid(row=0, column=1, padx=5)

tk.Label(lang_frame, text="➡ To:", bg="#1e1e2e",
         fg="#cdd6f4", font=("Arial", 11)).grid(row=0, column=2, padx=5)
tgt_var = tk.StringVar(value="ur")
ttk.Combobox(lang_frame, textvariable=tgt_var,
             values=lang_codes, width=12).grid(row=0, column=3, padx=5)

# Input
tk.Label(root, text="Enter Text:", bg="#1e1e2e",
         fg="#cdd6f4", font=("Arial", 11)).pack()
input_text = tk.Text(root, height=6, width=72,
                     font=("Arial", 11), bg="#313244",
                     fg="#cdd6f4", insertbackground="white")
input_text.pack(pady=5)

# Buttons
btn_frame = tk.Frame(root, bg="#1e1e2e")
btn_frame.pack(pady=5)

tk.Button(btn_frame, text="🌐 Translate",
          command=translate_text, bg="#89b4fa",
          fg="#1e1e2e", font=("Arial", 11, "bold"),
          padx=10).grid(row=0, column=0, padx=5)

tk.Button(btn_frame, text="📋 Copy",
          command=copy_text, bg="#a6e3a1",
          fg="#1e1e2e", font=("Arial", 11, "bold"),
          padx=10).grid(row=0, column=1, padx=5)

tk.Button(btn_frame, text="🗑 Clear",
          command=clear_all, bg="#f38ba8",
          fg="#1e1e2e", font=("Arial", 11, "bold"),
          padx=10).grid(row=0, column=2, padx=5)

# Output
tk.Label(root, text="Translation:", bg="#1e1e2e",
         fg="#cdd6f4", font=("Arial", 11)).pack()
output_text = tk.Text(root, height=6, width=72,
                      font=("Arial", 11), bg="#313244",
                      fg="#a6e3a1", insertbackground="white")
output_text.pack(pady=5)

root.mainloop()