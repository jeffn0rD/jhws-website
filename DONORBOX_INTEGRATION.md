# Donorbox Integration Guide

This guide explains how to integrate your Donorbox free account with the JHWS website.

## Step 1: Set Up Your Donorbox Account

1. **Create a Donorbox Account**
   - Go to https://donorbox.org/
   - Click "Sign Up" and create a free account
   - Verify your email address

2. **Create Your Campaign**
   - Log in to your Donorbox dashboard
   - Click "Create Campaign"
   - Fill in the campaign details:
     - Campaign Name: "Joshua House Warming Shelter"
     - Goal Amount: (optional)
     - Description: Brief description of your mission
     - Upload logo if desired

3. **Configure Campaign Settings**
   - Set donation amounts (suggested: $25, $50, $100, $250, Other)
   - Enable recurring donations (monthly, yearly)
   - Add custom fields if needed
   - Set up thank you message
   - Configure email notifications

4. **Get Your Campaign URL**
   - Once created, you'll get a campaign URL like:
     `https://donorbox.org/joshua-house-warming-shelter`
   - Save this URL - you'll need it for integration

## Step 2: Integration Methods

You have three options for integrating Donorbox:

### Option A: Popup Window (Recommended - Simplest)

This opens Donorbox in a popup window when users click the donate button.

**Implementation:**

1. Open `src/pages/index.astro` in your code editor
2. Find the `<script>` section at the bottom of the file
3. Replace the placeholder code with:

```javascript
<script>
  document.getElementById('donorbox-button')?.addEventListener('click', () => {
    window.open(
      'https://donorbox.org/your-campaign-name', // Replace with your actual campaign URL
      'donorbox',
      'width=600,height=700,scrollbars=yes'
    );
  });
</script>
```

4. Replace `your-campaign-name` with your actual campaign name
5. Save the file and deploy

**Pros:**
- ✅ Easiest to implement
- ✅ Keeps users on your site
- ✅ Clean and professional

**Cons:**
- ⚠️ Popup blockers might interfere (rare)

### Option B: Embedded Widget

This embeds the Donorbox form directly on your page.

**Implementation:**

1. In your Donorbox dashboard, go to your campaign
2. Click "Embed" or "Get Code"
3. Copy the embed code provided
4. Open `src/pages/index.astro`
5. Replace the donate button section with the embed code:

```astro
<div class="donate-card">
  <h3>Donate Online</h3>
  <p>Make a tax-deductible donation through our secure online platform.</p>
  
  <!-- Donorbox Embed Code -->
  <script src="https://donorbox.org/widget.js" paypalExpress="false"></script>
  <iframe 
    src="https://donorbox.org/embed/your-campaign-name" 
    name="donorbox" 
    allowpaymentrequest="allowpaymentrequest" 
    seamless="seamless" 
    frameborder="0" 
    scrolling="no" 
    height="900px" 
    width="100%" 
    style="max-width: 500px; min-width: 250px; max-height:none!important">
  </iframe>
</div>
```

**Pros:**
- ✅ Donation form visible immediately
- ✅ No popup needed

**Cons:**
- ⚠️ Takes up more space on page
- ⚠️ May affect page load time slightly

### Option C: Direct Link

Simply link to your Donorbox campaign page.

**Implementation:**

1. Open `src/pages/index.astro`
2. Replace the button with a link:

```astro
<a 
  href="https://donorbox.org/your-campaign-name" 
  target="_blank" 
  rel="noopener noreferrer"
  class="donate-button"
>
  Donate Now via Donorbox
</a>
```

**Pros:**
- ✅ Simplest implementation
- ✅ No JavaScript needed

**Cons:**
- ⚠️ Takes users away from your site

## Step 3: Testing Your Integration

1. **Deploy your changes** (push to Git, Cloudflare will auto-deploy)
2. **Visit your live site**
3. **Click the donate button**
4. **Verify the Donorbox form appears correctly**
5. **Test with a small donation** (you can refund it later)
6. **Check email notifications work**

## Step 4: Customization Options

### Customize Donation Amounts

In your Donorbox dashboard:
1. Go to Campaign Settings
2. Edit "Donation Amounts"
3. Set suggested amounts appropriate for your donors
4. Enable "Other Amount" option

### Add Custom Fields

Collect additional information:
1. Go to Campaign Settings → Custom Fields
2. Add fields like:
   - "In memory of" (text field)
   - "Anonymous donation" (checkbox)
   - "Mailing address" (for thank you cards)

### Recurring Donations

Enable monthly/yearly donations:
1. Go to Campaign Settings
2. Enable "Recurring Donations"
3. Set default frequency options
4. Add messaging about recurring support

### Thank You Page

Customize the thank you message:
1. Go to Campaign Settings → Thank You Page
2. Add custom message
3. Include social media links
4. Add next steps for donors

## Step 5: Tracking & Analytics

### Donorbox Analytics

Access built-in analytics:
- Dashboard shows total donations
- Donor list with contact information
- Export data to CSV
- View donation trends

### Google Analytics Integration

Track donations in Google Analytics:
1. Get your Google Analytics tracking ID
2. In Donorbox dashboard, go to Settings → Integrations
3. Add your Google Analytics ID
4. Donations will appear as events in GA

## Step 6: Tax Receipts

Donorbox automatically:
- ✅ Sends email receipts to donors
- ✅ Includes 501(c)(3) information
- ✅ Provides year-end tax summaries
- ✅ Stores all receipt history

Make sure your 501(c)(3) information is correct in Donorbox settings.

## Step 7: Payment Processing

### Fees

Donorbox Free Plan:
- Platform fee: 1.5% per transaction
- Payment processing: ~2.9% + $0.30 (Stripe/PayPal)
- Total: ~4.4% + $0.30 per donation

### Payment Methods

Donorbox supports:
- ✅ Credit/Debit cards
- ✅ PayPal
- ✅ Apple Pay
- ✅ Google Pay
- ✅ ACH bank transfers (US only)

### Payout Schedule

- Funds are deposited to your bank account
- Typically 2-7 business days
- Set up in Donorbox Settings → Payout Settings

## Troubleshooting

### Button Not Working
- Check JavaScript console for errors
- Verify campaign URL is correct
- Ensure popup blockers aren't interfering

### Form Not Loading
- Check internet connection
- Verify Donorbox campaign is published
- Clear browser cache

### Donations Not Appearing
- Check Donorbox dashboard
- Verify email notifications are set up
- Check spam folder for receipts

## Best Practices

1. **Test Thoroughly**
   - Make test donations
   - Check on mobile devices
   - Verify email receipts

2. **Promote Your Donation Page**
   - Share on social media
   - Include in email signatures
   - Add to newsletters

3. **Thank Your Donors**
   - Send personalized thank you emails
   - Acknowledge major donors publicly (with permission)
   - Share impact stories

4. **Keep Information Updated**
   - Update campaign description regularly
   - Share progress toward goals
   - Post updates about how funds are used

## Support Resources

- **Donorbox Help Center**: https://donorbox.org/help
- **Donorbox Support Email**: support@donorbox.org
- **Video Tutorials**: https://donorbox.org/resources

## Example Implementation

Here's a complete example of the recommended popup integration:

```astro
<!-- In src/pages/index.astro -->

<div class="donate-card">
  <h3>Donate Online</h3>
  <p>Make a tax-deductible donation through our secure online platform.</p>
  <button class="donate-button" id="donorbox-button">
    Donate Now via Donorbox
  </button>
  <p class="note">Secure payment processing by Donorbox</p>
</div>

<script>
  document.getElementById('donorbox-button')?.addEventListener('click', () => {
    window.open(
      'https://donorbox.org/joshua-house-warming-shelter',
      'donorbox',
      'width=600,height=700,scrollbars=yes,resizable=yes'
    );
  });
</script>
```

---

**Questions?** Contact Donorbox support or refer to their comprehensive documentation.