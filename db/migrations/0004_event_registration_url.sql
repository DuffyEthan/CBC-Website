-- Some events register through a partner (Luma, etc.) instead of the bot's
-- in-Discord Register button. `registration_url` being set is what the bot
-- uses to decide which flow an event gets; the website just needs to surface
-- the link when present.

begin;

alter table events add column registration_url text;

commit;
