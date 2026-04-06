# Password Entropy & Strength Analysis 🛡️

This laboratory is a technical deep dive into the mathematical robustness of passwords. Developed as part of my portfolio, it demonstrates how **Python logic** and **Data Visualization** can be used to quantify security against brute-force attacks.

## 🎯 Project Objective
The goal is to evaluate password strength beyond simple "strong/weak" labels. This lab calculates the **search space (combinations)** and uses **entropy principles** to show why length and character diversity are mathematically superior to common patterns.

---

## 🚀 Key Functionalities

* **Security Logic Engine:** Implements a scoring system based on length, uppercase/lowercase, numbers, and special characters using `re` (Regular Expressions).
* **Logarithmic Complexity Analysis:** Visualizes the exponential growth of security. Since the difference between a numeric and a complex password is astronomical, the lab uses a **Logarithmic Scale** for accurate comparison.
* **Dynamic Feedback:** The script analyzes the input and provides specific instructions on what is missing (e.g., "Falta carácter especial").
* **Visual Reports:** Generates professional bar charts using `matplotlib` to compare the user's password against standard benchmarks.

---

## 🛠️ How to Test Your Own Passwords

You can interact with the lab by modifying the logic directly in the Jupyter Notebook:

1.  Open the file `01-password-entropy-&-strength.ipynb`.
2.  Scroll down to the section marked with the comment:
    ```python
    # PRUEBA TU CONTRASEÑA AQUÍ
    mi_pass = "Admin123!" 
    ```
3.  **Replace** `"Admin123!"` with any string you want to test.
4.  **Run the cell** (Shift + Enter) to see the security score and the updated entropy graph.

---

## 📊 Technical Stack

| Tool | Purpose |
| :--- | :--- |
| **Python 3** | Core logic and security algorithms. |
| **Jupyter Lab/Notebook** | Interactive environment and documentation. |
| **Matplotlib** | Data visualization (Logarithmic bar charts). |
| **Regex (re)** | Pattern matching for password policy validation. |

---

## 🖼️ Preview

The lab provides a clear visual distinction between security levels:
* **Red:** High risk (Numeric only).
* **Orange:** Medium risk (Alphanumeric).
* **Green:** Secure (High Entropy / User Password).

---
*Developed by Lucas Martinez*
