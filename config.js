// SpendWise Supabase configuration.
window.SPENDWISE_CONFIG = {
  SUPABASE_URL: 'https://gexgjjcjaqwftqcjlurb.supabase.co',
  SUPABASE_ANON_KEY: 'sb_publishable_YiccFyF3yHpUJbw2tqeTtw_oaMI5lfU'
};
// Cloudflare Turnstile public Site Key.
// Replace the placeholder with your actual Site Key.
const TURNSTILE_SITE_KEY = 'PASTE_YOUR_CLOUDFLARE_SITE_KEY_HERE';

let turnstileWidgetId = null;
let turnstileToken = '';
let turnstileRenderAttempts = 0;
let turnstileRendering = false;