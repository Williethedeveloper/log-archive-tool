https://roadmap.sh/projects/server-stats

# 📂 Log Archive Tool
 
## 📜 Project Description
The **Log Archive Tool** is a command-line utility designed to help system administrators archive and manage log files efficiently. It compresses logs into a `.tar.gz` file and stores them in a designated directory, ensuring better system performance and easier log management.

## 🚀 Features
- Accepts a log directory as an argument.
- Archives logs into a compressed `.tar.gz` format.
- Saves the archive with a timestamped filename.
- Logs the date and time of each archive operation.
- Keeps your system clean by storing logs efficiently.

## 🛠️ Usage
Run the script from the terminal:

```bash
./log-archive.sh /var/log
```

### Example Output:
```bash
✅ Logs successfully archived: logs_archive_20240304_153000.tar.gz
```

## 📌 Installation & Setup
1. **Clone the Repository**
   ```bash
   git clone https://github.com/Williethedeveloper/log-archive.git
   cd log-archive
   ```

2. **Give Execution Permission**
   ```bash
   chmod +x log-archive.sh
   ```

3. **Run the Script**
   ```bash
   ./log-archive.sh /var/log
   ```

## 🏆 Advanced Features (Future Enhancements)
- Automatically delete old archives to save space.
- Email notifications for completed log archives.
- Upload archived logs to a cloud storage service.

## 🔧 Troubleshooting
- If you encounter a **permission error**, try running the script as `sudo`:
  ```bash
  sudo ./log-archive.sh /var/log
  ```
- Ensure the log directory exists before running the script.

## 📜 License
This project is licensed under the MIT License.

## 🙌 Contributing
Feel free to fork this repository and submit pull requests with improvements!

---
**Project URL:** [https://github.com/Williethedeveloper/log-archive](https://github.com/Williethedeveloper/log-archive)

