# Close All Open Applications with ALT + Q using AutoHotkey v2

An AutoHotkey script that allows you to close all open applications by pressing **ALT + Q**. Use this script with caution, as it may cause unsaved data to be lost.

## **Why this script?**

I created this script to provide a quick way to close all open applications, especially useful when needing to shut down the system quickly or when troubleshooting. It saves time by automating the process of closing each application individually.

## **Features**

- Closes all open applications when **ALT + Q** is pressed.
- Prompts for confirmation before proceeding.
- Attempts to close applications gracefully before forcing them to close.
- Excludes essential system processes and the script itself.
- Compatible with **AutoHotkey v2**.

## **Prerequisites**

- **Windows OS** (tested on Windows 10 and above).
- **[AutoHotkey v2](https://www.autohotkey.com/download/)** installed.

## **Installation**

1. **Download or Copy the Script:**

   - Save the script as `CloseAllApplications.ahk` on your computer.

2. **Run the Script:**

   - Double-click the `CloseAllApplications.ahk` file to run the script.
   - You should see the AutoHotkey icon appear in the system tray.

## **Usage**

- **Close All Applications:**
  - Press **ALT + Q** to initiate the closing process.
  - A confirmation dialog will appear. Click **Yes** to proceed or **No** to cancel.

## **Important Warnings**

- **Data Loss Risk:**
  - This script will close all open applications, which may result in unsaved data being lost. **Please save all your work before using the script.**

- **Use Responsibly:**
  - Be cautious when using this script, especially on systems running critical applications.

## **Customization**

- **Exclude Additional Applications:**
  - You can modify the script to exclude other applications from being closed. Add additional conditions in the script's loop:
    ```autohotkey
    if processName = "application_name.exe"
        continue
    ```

- **Change the Hotkey:**
  - To change the key combination that triggers the script, modify the line:
    ```autohotkey
    !q::  ; Change this to your preferred hotkey
    ```

- **Remove Confirmation Prompt:**
  - If you prefer not to have a confirmation dialog, you can comment out or remove the confirmation section:
    ```autohotkey
    ; Ask the user for confirmation
    ; response := MsgBox("...", "Confirmation", "YesNo")
    ; if response = 7
    ;     return
    ```

## **Contributing**

Feel free to submit issues or pull requests if you have suggestions for improvements or encounter any problems.

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Disclaimer:** Use this script at your own risk. The author is not responsible for any data loss or damage caused by the use of this script.

