--   INSERT INTO newtable(name, timers) VALUES('fre', 2300 );



    ALTER TABLE public.t_user_roles ADD UNIQUE (user_id);

--   test user admin pass 33333
   INSERT INTO public.t_user(id, password, username)
        VALUES (1, '$2a$10$CyA/e5X.g90lBAuQCux59e6Na1yB6KJ2afYg62MGjrqSaJ7Hd36ia', 'admin') ON CONFLICT (id) DO NOTHING;

   INSERT INTO public.t_role(id, name)
     VALUES (1, 'ROLE_USER'), (2, 'ROLE_ADMIN') ON CONFLICT (id) DO NOTHING;


   INSERT INTO public.t_user_roles(user_id, roles_id)
     VALUES (1, 2) ON CONFLICT (user_id) DO NOTHING;

