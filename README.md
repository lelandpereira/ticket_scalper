# TicketScalper

## Cloudinary Setup

Since you have columns in your tables that represent image uploads, you need to configure the application to use your Cloudinary account.

[Cloudinary](https://cloudinary.com/) is an image hosting service. Sign up for an account if you don't already have one, and then find your `Cloud name`, `API Key`, and `API Secret` in your dashboard.

We don't want to paste these secrets directly into our code (because then they will show up on GitHub). Instead, [follow these instructions](https://guides.firstdraft.com/storing-credentials-securely) to create environment variables containing your credentials. Use the names `CLOUDINARY_CLOUD_NAME`,
`CLOUDINARY_API_KEY`, and `CLOUDINARY_API_SECRET` to contain your credentials.

Restart your server and your forms with image uploads should now work!
