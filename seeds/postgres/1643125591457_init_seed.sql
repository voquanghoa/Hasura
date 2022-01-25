SET check_function_bodies = false;
DELETE FROM public.long_tails;
INSERT INTO public.long_tails (tail, json_id) VALUES ('front', 1);
INSERT INTO public.long_tails (tail, json_id) VALUES ('data', 2);
INSERT INTO public.long_tails (tail, json_id) VALUES ('api', 3);
