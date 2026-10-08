import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://gexgjjcjaqwftqcjlurb.supabase.co/rest/v1/';
const supabaseKey = ''sb_publishable_YiccFyF3yHpUJbw2tqeTtw_oaMI5lfU';

export const supabase = createClient(
  supabaseUrl,
  supabaseKey
);