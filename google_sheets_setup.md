# How to Connect Student Registration to Google Sheets

The Java backend is now configured to automatically send every student registration to a Google Sheet. Follow these quick steps to generate your unique `SCRIPT_ID` and finalize the connection:

### Step 1: Create a Google Sheet
1. Go to [Google Sheets](https://sheets.google.com) and create a **Blank Spreadsheet**.
2. Name it something like "Smithas Academy Registrations".
3. In the first row (Header row), type these exact column names:
   - A1: `Date`
   - B1: `First Name`
   - C1: `Last Name`
   - D1: `Email`
   - E1: `Phone`
   - F1: `Course`
   - G1: `City`

### Step 2: Add the Apps Script
1. In your Google Sheet, click on **Extensions** > **Apps Script** in the top menu.
2. Delete any code in the editor and paste the following code:

```javascript
function doPost(e) {
  try {
    var sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
    var data = JSON.parse(e.postData.contents);
    
    // Add a new row with the data
    sheet.appendRow([
      new Date(),           // Date and Time
      data.firstName,       // First Name
      data.lastName,        // Last Name
      data.email,           // Email
      data.phone,           // Phone
      data.course,          // Course
      data.city             // City
    ]);
    
    return ContentService.createTextOutput(JSON.stringify({"status": "success"})).setMimeType(ContentService.MimeType.JSON);
  } catch (error) {
    return ContentService.createTextOutput(JSON.stringify({"status": "error", "message": error.toString()})).setMimeType(ContentService.MimeType.JSON);
  }
}
```

### Step 3: Deploy the Script
1. Click the blue **Deploy** button at the top right, then select **New deployment**.
2. Click the gear icon next to "Select type" and choose **Web app**.
3. Under **Description**, type "Registration API".
4. Under **Execute as**, select **Me (your email)**.
5. Under **Who has access**, select **Anyone**. *(This is required so the Java backend can send data without logging in)*.
6. Click **Deploy**.
7. Google will ask you to authorize access. Click **Authorize access**, choose your account, click **Advanced**, and click **Go to Untitled project (unsafe)**. Allow the permissions.
8. Copy the **Web app URL** it provides you. It will look like: `https://script.google.com/macros/s/AKfycb.../exec`.

### Step 4: Add the URL to Java
1. Open the file: `src/main/java/com/smithasacademy/servlet/RegisterServlet.java`.
2. Scroll to line 76 (inside `sendToGoogleSheets`).
3. Replace the placeholder URL with the real Web App URL you just copied:
```java
String scriptUrl = "YOUR_NEW_WEB_APP_URL_HERE";
```
4. Save the file and restart your Tomcat server (`mvn tomcat7:run`).

That's it! Every time a student registers, they will appear instantly in your Google Sheet, and you will also receive the email notification as usual.
