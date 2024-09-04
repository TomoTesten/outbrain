# MAIL 1
Hi Kim!

Thank you for reaching out to the support team. 

Outbrain offers geo-targeting feature, which would in your case allow you to run your ads in Canada and US only, and here is how:
- Access your Outbrain account
- Go to your campaign dashboard, click **“Create Campaign”** or select an existing campaign to edit.
- Navigate to your campaign dashboard.
- Select an existing campaign to edit or start a new campaign by clicking on **“Create Campaign”**.
- Scroll down to the **Targeting** section under your campaign settings.
- In the **Location (Geo-Targeting)** section, you will see options to **Export**, **Import**, and **Download Template**
- Click on **Download Template** to get the CSV file and open it in your favourite spredsheet editor (Excel, Google Sheets...).
- In the template, you will see a column for locations. 
- Input **Canada** and **United States** in the location rows.
- Make sure no other country is there
- Save the CSV file after adding these locations.
- Return to the Outbrain dashboard, and under the same **Location (Geo-Targeting)** section, click **Import**.
- Upload the modified CSV file
- Once uploaded, verify that only Canada and the United States are listed in your target locations.
- Click **Save** and proceed with launching your campaign.

This process ensures that your campaign will only target users in Canada and the US.

As for the second part of your question, you need variations of your product in order to optimize your campaigns and to drive more clicks across your different variations. Our system will filter out the best performing content and serve it more frequently to pique your audience’s interest. For this you can use our [Variations tool](https://www.outbrain.com/help/advertisers/add-content/) to add in creatives with similar keywords and images, and draw inspiration from the titles that are garnering the most clicks. As you add more titles that resonate with your audience, disable the lower-performing pieces to ensure your budget is geared towards the newer additions.

Let me know if you need further clarification!

Best regards,

Tomo Testen


# MAIL 1 thinking proccess

First I searched for "specific country targeting" and found article "How Do I Target My Campaign by Location?" where I found step by step tutorial for it under "Standard Targeting Capabilities".

For second part I searhed "variations" and found "How can I drive clicks across all title variations?"

# MAIL 2
Hi there!

Thank you for reaching out to the support team. Let's try some things to troubleshoot this.

The response I provided addresses the technical issue but doesn’t explicitly acknowledge the fact that **purchases were made** and that the event still isn’t firing. Including that information can help clarify the situation, making sure the support team knows that conversions are definitely happening, but the event tracking is malfunctioning.

Here’s a refined version that incorporates the information about purchases being made:

---

**Subject**: Assistance with Event-Based Conversion Setup

Hi there,

Thank you for reaching out! I understand that you've set up an event-based conversion, but it's not firing even though purchases have been made on your site. Let’s troubleshoot this to get things working as expected.

### Common Issues and Fixes:

1. **Ensure Proper Pixel Setup**: 
   - First, double-check if the **Outbrain Pixel** is installed correctly on your site. You can use the **Outbrain Pixel Tracker** to test the implementation. A successful test will return a “200” or “304 Not Modified” status, confirming the pixel is firing properly when the event occurs.

2. **Verify Event Tracking Code**: 
   - Since you’ve confirmed that purchases have been made, ensure that the event code specifically tied to purchase actions is correctly implemented. This includes verifying the event action, value, and any dynamic parameters (such as purchase amounts) are passed properly to Outbrain.

3. **Codeless Conversion Setup**:
   - If you’re using **Codeless Conversion**, ensure that the conversion is set up in the Outbrain Amplify Dashboard. This can simplify event-based conversion tracking if you're facing issues with custom code on your site.

4. **Placement and Testing**: 
   - Make sure that the pixel is placed in the correct sections (usually the header or footer of your site), and that it is loading correctly on all pages tied to the purchase event. If the pixel is placed incorrectly or not loaded on the relevant page, the purchase event may not trigger.

Given that purchases have been made but events aren’t firing, I recommend double-checking the exact event triggers and potentially reinstalling the pixel for accuracy.

Let me know if you need further clarification!

Best regards,

Tomo Testen


# MAIL 2 thinking proccess

I searched for "event-based conversion" and found article "How Do I Target My Campaign by Location?" where I found step by step tutorial for it under "Standard Targeting Capabilities".

