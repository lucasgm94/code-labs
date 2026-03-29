# Crypto Analytics Dashboard 🚀

A professional cryptocurrency monitoring dashboard built with **Oracle APEX 24.x** and **PL/SQL**. This project visualizes Bitcoin (BTC) market trends through a modern, data-driven interface.

## 📁 Project Structure
* **`/readable`**: Human-readable source code of the APEX application.
* **`app-code-apex.sql`**: Full application export (App ID: 163159).
* **`crypto-dashboard-table.sql`**: SQL script for the `CRYPTO_DASHBOARD` table structure.
* **`crypto-data.sql`**: Historical dataset (30 days of BTC records).

## 🛠️ Features & Technical Highlights
* **Interactive Charting:** Area chart visualizing price fluctuations over the last 30 days.
* **Optimized Grid Layout:** Custom 8-4 column distribution for a balanced UI/UX experience.
* **Advanced SQL Formatting:** * Currency formatting with `TO_CHAR`.
    * Volume metrics simplified to Millions (M) for better readability.
* **Dark Mode UI:** Optimized using the Oracle Universal Theme.

## 📊 Preview
![Bitcoin Trend Dashboard](./image_fc0742.png)

## 📥 Installation
1. Run `crypto-dashboard-table.sql` and `crypto-data.sql` in your Oracle SQL Workshop.
2. Import `f163159.sql` into your APEX Workspace.
3. Run the application and enjoy the insights!

---
*Part of the **code-labs** repository | Developed by Lucas Martinez*
