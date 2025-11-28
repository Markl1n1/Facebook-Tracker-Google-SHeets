-- SQL script to create the facebook_leads table in Supabase
-- Run this in Supabase SQL Editor
-- Note: This matches the actual table structure created in Supabase

CREATE TABLE IF NOT EXISTS facebook_leads (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  fullname TEXT,
  country TEXT,
  phone TEXT,
  email TEXT,
  facebook_id TEXT,
  facebook_username TEXT,
  facebook_link TEXT,
  telegram_user TEXT,
  manager_name TEXT
);

-- Optional: Create indexes for better search performance
CREATE INDEX IF NOT EXISTS idx_fullname ON facebook_leads(fullname);
CREATE INDEX IF NOT EXISTS idx_email ON facebook_leads(email);
CREATE INDEX IF NOT EXISTS idx_phone ON facebook_leads(phone);
CREATE INDEX IF NOT EXISTS idx_facebook_id ON facebook_leads(facebook_id);
CREATE INDEX IF NOT EXISTS idx_telegram_user ON facebook_leads(telegram_user);
CREATE INDEX IF NOT EXISTS idx_manager_name ON facebook_leads(manager_name);