# SpendWise — Supabase Cloud Version

## 1. Local mode
Open `index.html` and the app works without Supabase. Expenses are stored in browser localStorage.

## 2. Supabase setup
1. Create a Supabase project.
2. Open SQL Editor and run `supabase.sql`.
3. In `index.html`, find `const CONFIG={url:'',key:''};` and replace the empty values with your project's public URL and anon/publishable key.
4. Never use a Supabase service-role/secret key in the browser.
5. In Supabase Authentication settings, configure email confirmation according to your preference.
6. Deploy the folder to Netlify.

## 3. What cloud mode provides
- Email/password sign-up and sign-in
- Per-user expense records
- Cloud sync across devices
- Row Level Security so users only access their own expenses
- LocalStorage fallback when cloud configuration is absent or temporarily unavailable
