# How to Connect Student Registration to a Google Form

We have switched the integration! Now, your Java backend will automatically submit the registration data into a standard Google Form (which drops the data into a Google Sheet). This is easier than the previous method and requires NO coding on your part.

Follow these quick steps to get the Form URL and link it:

### Step 1: Create the Google Form
1. Go to [Google Forms](https://forms.google.com) and create a **Blank Form**.
2. Name it "Smithas Academy Registrations".
3. Add **Short Answer** questions for the exact fields we need, in this order:
   - First Name
   - Last Name
   - Email
   - Phone
   - Course
   - City
4. Go to the **Responses** tab of your form and click **Link to Sheets** to create a Google Sheet for your data.

### Step 2: Get the Pre-filled Link (To find your IDs)
1. In your Google Form, click the three dots (`⋮`) in the top right corner.
2. Click **Get pre-filled link**.
3. A new tab will open. In every text box, type the word `TEST`.
4. Scroll to the bottom and click **Get link**, then click **Copy link**.
5. Paste that copied link into a notepad. It will look something like this:
   `https://docs.google.com/forms/d/e/1FAIpQLS.../viewform?usp=pp_url&entry.123456=TEST&entry.654321=TEST&entry.111111=TEST...`

### Step 3: Add the Link & IDs to Java
1. Open your code: `src/main/java/com/smithasacademy/servlet/RegisterServlet.java`.
2. Scroll down to line 78.
3. Replace the `formUrl` string with your form's URL. Make sure it ends with `/formResponse` instead of `/viewform`!
   *(Example: `https://docs.google.com/forms/u/0/d/e/1FAIpQLS.../formResponse`)*
4. Scroll to line 89, where you see:
   `entry.YOUR_FIRSTNAME_ID=%s&entry.YOUR_LASTNAME_ID=%s...`
5. Replace `YOUR_FIRSTNAME_ID`, `YOUR_LASTNAME_ID`, etc., with the exact numbers you found in your Pre-filled link!
   *(Example: `entry.123456=%s&entry.654321=%s`)*

### Step 4: Restart
Save the file and restart your Tomcat server (`mvn tomcat7:run`). Every time a student registers, the data will instantly appear in your Google Sheet!
