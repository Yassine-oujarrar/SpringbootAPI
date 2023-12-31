PGDMP  &                    {           medicapp    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16400    medicapp    DATABASE     {   CREATE DATABASE medicapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE medicapp;
                postgres    false            �            1259    16536 	   audit_log    TABLE       CREATE TABLE public.audit_log (
    id bigint NOT NULL,
    action character varying(100) NOT NULL,
    user_id character varying(255),
    "actionDate" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    action_date timestamp(6) without time zone
);
    DROP TABLE public.audit_log;
       public         heap    postgres    false            �            1259    16535    audit_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.audit_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    218            �           0    0    audit_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.id;
          public          postgres    false    217            �            1259    16524    drug    TABLE     �  CREATE TABLE public.drug (
    cases integer NOT NULL,
    catnumber integer NOT NULL,
    centers integer NOT NULL,
    drugnumber integer NOT NULL,
    eps1 integer NOT NULL,
    eps2 integer NOT NULL,
    eps3 integer NOT NULL,
    posts integer NOT NULL,
    status integer NOT NULL,
    createdby character varying(255),
    dci character varying(255),
    dosage character varying(255),
    form character varying(255),
    lastupdatedby character varying(255),
    reference character varying(255)
);
    DROP TABLE public.drug;
       public         heap    postgres    false            �            1259    16523    drug_catnumber_seq    SEQUENCE     �   CREATE SEQUENCE public.drug_catnumber_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.drug_catnumber_seq;
       public          postgres    false    216            �           0    0    drug_catnumber_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.drug_catnumber_seq OWNED BY public.drug.catnumber;
          public          postgres    false    215                        2604    16543    audit_log id    DEFAULT     l   ALTER TABLE ONLY public.audit_log ALTER COLUMN id SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 ;   ALTER TABLE public.audit_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218                       2604    16527    drug catnumber    DEFAULT     p   ALTER TABLE ONLY public.drug ALTER COLUMN catnumber SET DEFAULT nextval('public.drug_catnumber_seq'::regclass);
 =   ALTER TABLE public.drug ALTER COLUMN catnumber DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16536 	   audit_log 
   TABLE DATA           S   COPY public.audit_log (id, action, user_id, "actionDate", action_date) FROM stdin;
    public          postgres    false    218   ;       �          0    16524    drug 
   TABLE DATA           �   COPY public.drug (cases, catnumber, centers, drugnumber, eps1, eps2, eps3, posts, status, createdby, dci, dosage, form, lastupdatedby, reference) FROM stdin;
    public          postgres    false    216   W       �           0    0    audit_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.audit_log_id_seq', 40, true);
          public          postgres    false    217            �           0    0    drug_catnumber_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.drug_catnumber_seq', 2, true);
          public          postgres    false    215            #           2606    16545    audit_log audit_log_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    218            �     x�}�M��@���)r���-��QvI�d9�?G��fZ��}���¦Ǐ��?�,o�o��p=Y���,��R��l��&�߿�t>{
]�X��N�}ik��YW֟�����E/Y�*���y� �� ��/�L��n	q�*����yw"_��;�F�}^Y��9���.O�'�űDe��#�Zd>L���D5|��<���Kbbһ����A��~���T]� �0j��4QM��_�ح���х�Tx�4���ߧ�R9����[�>MN�������㖿���_y��3��)4H�w���m�+�|���3���Z���H���3�$(��?�D!����g�f~�o���3�d��G¬���O���Nf�g��)�;�GZ^�g��V�f���H���mS�v�l�33@f�N^D�|0
�L_y��kK�� 7�mS}`��^Ǐ䆾���n{�|&U~�O�%��� �i���L��@M���t���_�I�^���Dm�!��a 3|'/���>��1��#;�� � ��      �      x����r�:������ĵ��Q�>$9n�B_�5G�Ֆ�s�1�UB���F��}�Yͮ���t?�]���!�L& � �GU��tGt�.�H ��Db�7�{��pd�o��o*�B{'��MD2������G��Ob��DfiHȐ�F��6O�'�$a�l4J�{˗�j9g��g���4��U��t����9��b煼`���-54آ"XVH��գ�Y�3ߜDr��c��L���qp8ޟ��Z�qVv[��{�TvН*}��9��|�U���j��~�yF<���!�4ξ��H��{��:Y�<gm��O�J��^<�qF��Sn�6�J��J�O9%�#\B��7��W�Y8{y^����O���JU8�$�$SjH�M�s�[����&J��p�&���\K��~�CI�6�_����E46�Y�(s)���|Q����׍`|�$���ș\�j��'�����E��� �t?���Ǟ:S@��9ME�:2��E⫼υ�����ۧ z�� A�@��H��<e��d�M?��c �.��Gy@�?s�o�/OsY��;c����O�����f�Q�(h*~X��@���p<�}l0 nh�"��N-��H�'��%�U���*Y���do�;M�a�7�1�S�XM�B���C!z@L�"������*��;(�2��q8�ѐs�r%3�A���ZQ7F]!��Av� E�z�}�����=���,����x��]��e!N�=�d"�"eS�ߗS���c�=�������`�j�=P�H��t!�V�O<vd�V�������J8������7�U]�x��G���E��u�j��o2�D�AcS_���*ވ\��Tp+H-_'����A!����[�zX%�(�c%�(D�PsY���b���n@L���݇��qg�L���9߰���p��(Dz_�4�<����>�����H4-��6���.�#Q��%�]�e�2)�3h���E�r�:�6A��m�֯_D3����������֝x���,�$ݬs� ��S�Q72������cY@�HZxVZ9p�J��G�m�d�C<���6����N+��=o���
9��a�+���W�y	r���,Q��"A��.���\m{.��k�A[��g��.���R~f[�0���ь$��"�V E^9=؁�,/�s�J�Z'l;��Ι`iQ;�3�`�\������)��J|��_?�zy�IC#�I�� .ەbU���*i�e$��p,H�9���R~.	�� �N��塧vҤN�0�ZC�=4d"�˗�"� > ]e.����^r�zI����$Z+{r{�G� 0|��#�����E&2�>�G��6����?܅��,���M�\U)��Ҩ0�e�u	�)*�L���S��f�ZJx�[!G`���)�x�R�hܩo��2�Д�y�LQ��O�7���m�k�Ǥ.�*�R�*�H+�Mq����=G`�S��!��yӴ�,ߐ�Mm�3^X��ޮ�m��,VT��*d�d�Z\i{�*�yopxhƖ6�1���0g��iq56�:{8G�Y!�"wE
�@�Х�Ƴ3�e�!�^noN����S�1�;i�[��{�OXme�G����L:�S���a���1����#�j�CAԿF�F�*�~�QgS�l�G4�h�HQ�6�Ie�kc�ϰ�>K�PjP`��P�u�ms���T�H%j�w�^2s�J���7���/���*����h�-!��ks��J��n����A�"��23�Jz"�d��;`�듽]UeK��V�,/܁ǖ���w=�njV�G����B�Q{�I-��֙zKkܣț��P0�؈]c}��AU�u�X����T��
������%�}�������b�X�b}�eA[�E�<n0����!��D�������_hL��1��p.֕Ok�d�3��Ÿ^G�>����hq��=t������.���h���{��/6�8�?Ie5��Ā�n��Ǚ�l=&�oqV���\�?��ӆ���������q��'�G��!�a��`K�v�=���Gz�&�o��f��0:��0rn�
��JpӲ���dR��27�̡��$�Q�e����G�`�a<B���ptu���hP�����D�yܩ�lX�"례K�����ɏ�p��UUP��3r
�<�d.	45�Y����^D�1��7)��-�@���@�v�����3�c5��S>ƫ�����f�Pm(D��\Y������yv@�>��`��s�N����S_i�)�c&�1�+��d]�zH��5�y�t.�����驰��z�p]�An#�y�C�hg���F�4�z3h�pC��$=S�łiq�ݣ�:�O�߾���۪(�p1`�o1���});4��l�j��������GCB��C��}L�eΟ��O�=չ��,�"S��A�})h�F���Re�Y�<.�/�Z�[.���"��MS�M���� �W������O˼����&�J���bY@�1+�`�r�S�
� @�Wy=�����	��o\	t�MS�-���e4^����?�)��v�~ә�ߴۙ�6r[������~	��%�g
4��l�:O�q!�ʷ���w^����{�2��/")_��zN�R���(\|9WI��<&	�(#ab�MK����z��=���@K��T�uN��e͊}��iM-6���?��(!VS�����"Q��Y��h�Ɔ��Ie�t�@ú,�"�r���<���D�jݚ����L�S5�l��и�rP�ޡ��HD�r��C���Q�4��t.IH��ߐ�RsQ�T΍�Bw �}\�2���ֹ�_�W"mRy��*� ���[�kc2%���ѵz�[��J@�u@��������+qk�nX�sjt�fι�������ؖ׵	�#��ZQ�D���4�86�y�7ڟ���0_��<��
��Bi,W7��ui`-���5��1�ׯ�D+�
�~��q��m3�?U9����z����z0��\�����.��B�Ih,�40 :4�0���6�,'���J�h��Oa�n-��
����������d����v��R�m����V����1K�	�h
8Փ�1�h~^EE2['у>��ژ�a)g/�$�U�+�K�K񋔧�C�c����"�s��(�B9��M��x����\Â�\�$3�~h��\?��?�fn�<2���>猈�z�4�u�{^�O�`y�X?���r`a����j��7����9�w<��'ɢ�����6=���c0|�U��T�C�r����4]��˜��I$��~��W�[?U�Bv�w8DQϧb^�[zH�н��9	9�O"��0����)�ɺhcSW����&'�zK�\cah�k�l�bQ����x{� �+�L0�x�X�&��L�x�nTV�V�--4�����&��TJ���4���(]�$4�Z��gy�W�H[��w8���s�d�(�ޡ�l�xʯC۱m�t9w+�-�:�U	K�?��u�p�%�Iy��_UR
��|&
��3�{F�t�~�6V�����r�¹M߲�O#���[�|!��p�a�<�M�;�B���y&u�/�3�����f�|�g�	�rAz������M��ķ3k��m�H=YV�^�K^r#�5��0���,�����fhL�-�lgX �y` n�!�80{�@���Ս�O�R.�}x���!7���� s�2Qs�wwWD�U�:y�t����#'ZԵ����C�i�6����VLg�@�G�������6Te�ҟ�N�'�)�����Ei�64<t��P�\|o�o��^�e��8��O�ku��jN�17���N��OZ&̹�ܘ�X�I���A���9��?u;�z�C�#����	V�>�2���c�?�:ӵ=cn��D�a�X��&~�r�E
��������p�ǹY� p�w�X+���x#��ك��U�S{���Ճ*4F���c���=�������v��]ٔ�    ����IFc�Z�-l�?����hM��Yw��BORI����p2P�(��c�}>��x4�����֐s�Gs���\��.��w'��Ssޅ�H"�$����2��ꜶIq���c���Tӳԩ�$Y}���Oĝ/�KE���LvH�ʅ:��G�1�<�=(�2� Z�-[�Ҹv���cqlh�;�DbU
3�!���NuS��X�R�pl�0-|`x��棠yJ��]o^=���VO���P��z1�FN@��1�U��W���x%aA~/�uc��g
!d�8Ie��Mҙ���*˸0�_��^��&�j�`k�ӧ��٦h�;�������3�0sV���SՖ�T@W.�`�hc�\�����Y±���J�m��'��R��R>hJ�]�^�@��үP?�!¾͸qmb���m�-�߭�.�CZ4xe_�J;q&[E�O�Y��2���az��$n�xZC��M���VqKwH΀�wy�=eG"pcp�A��aW�O�NΕ;�f`����k�+�^'���:�?)>'��	 �C��I���E�(����3���"�so��vB�f�p�*�.�_�ٖ���r3�5�.�������Dk}��4K��\�;�c�§�,00�h+&J��l����U)�*wq`Ttp�V�n�����V'ʚ��92��kS�C��Zd�w�����~�V�;��?�xh��)�V4��n�,�|��w�3�2a�Ć����v��~��	�v�r/���qR���q��Wy+%���͇w�v�lSTS]�������Hl�O�~��Y�1m�S�O�``�ꃏf�|~}p8�]U.���5���ǿ��h���?4��U�]�c0��ǹ��:-�wR�> 3(Сq�	Dg&ԁ��` 'DI��݆��WIiN��㺩`*���͟��x�h���[f.d���khaKC��e��¢Ա���z�He5F��2��~(���d���rO�+�{��Zp�$j��%�sNC���5��O�V�!jj�,)�6s�l���]�� �Um���^[	�"�O�_ds��.���yg�{��e��<�8ֽ�Mo�O��)#9�˳�{Kf%)�.	��z�ze&�C:R��'�y���DV��W��;�g&eW�D��s�{�`T�������e�&\.S+<?�Ǐ��'$�h29�GT��<�ُ�*�6YS���I������X��G���1��w� ������oTJA��=�ӆ�g�9f��d��UBv���g���NTn|�5+�;NڀBs���'v6^�}=X���6Xj���f��(�TDq�2�n�Le��s3A�q�_///y��ӥϬk��t�'���Ȏ�Gj�BD�4H��u��v5/o�O���2M�L-u��9�q��|�����C۩r0gq�R��Q$� ;U�L��f/ϩZ=pF^�Ep�+���*0�i��6�PN�H�c8R����g.l��r�|n\I"r�	g�����ˊ*K?Ĥ�&jɾ��{{��0*��w$��Z��+3)���j���J�R�vj(`��Ӓ_�8>)E�l��{�����B����ڰ�=�Æ� ����»Q���[l,�ud����Nm�b��u�5�N�ǆ�\6�W�ݓ�[��h��A�uЙ���I2���[<�B(&�$Mh�hllu�L����U��d1�/���c��>,;-�s��j��i`��������٣��tc��&ĊcDe�i��?��h�B<�d\���H�1E�\)V|��S#t��}�so��;�
��'�R@�]�/	 �u�!y6� ��3n�v��n#��7�:��\�&_/��BέY��y���5W+Q�u�	�gҸtq���I�Z���!s���8 )wYx;� 1w)3gf�0��������n��ɜO�y\Ry�8 �<�N�E;��m��c���;
�;��၃Q@�o�k�i�ՙ���y�0���6�X5lb`hbO���\�c�x��{$0�;$���h{8-h`~.�:qg}VX�.��l��q���x˲����D;i�V!���z�tiZ�&3 ��4k�M��簡}Ƣt��YC��y���&24񄫩�spխ!紇�aWc@�~���mQBy���O�_�%.L��7�Ԇ[Nf�8�n�y.m����Ohԡi>��և��lt:l�� M�-m�l+X�l6ݻ��3��h2C䒵��˩Ay~:�R�!벨H�I$rן$�/�MLfi��*�m�~q�`�|�PPaZ)�z� ���S�:��Q'謺������om�ύ��f GH��K��2���G2n�M���/�0U�������M��M�86��%�oB�M�:�h�>�4.3n�
)�w@�YtΙ{���������
��,�.%u��x������~��l�{�ԛXx�<��%�f���\d�0?��~�1j�?y�w�GS�P 9�i�񳸿�]�Z���]L\2�i��S�//aLTl �,�Qj.r9�*P�\�Y������g�d�B��fU��n{�i�qk��mN�M�kTj�o�jNB�&��{�*O��8�\EB��kb�u����P�Wf�#;����������?���rQrt������"[�ڕp�h@�P�Ȧ޹
��]{1�Z�s�[|8,��I
�eA)A.훞|��蔫�
�)i��j�����Ԇ&�[Lx�kJh((�H��� �(��3�F���iH����nX��:c���P:t����6�rh�e�E$N��<����5���]���t)h��v$Pa8s�`у�h���I)��I�\�&��� ���h]��}[�L�nN[� 0�����-�G�BVCmP(B��ǵ ���a�3�2B?��N+��=����G��C�w`D�����s��N,�5�� �gvA�M	�4��|��u����-�A	�6�1���a[�	'ЙE��u��G1<W�	a��h�=6�b>�"cݒ/#��ŉ��6 ��C���4�P�����Ef�{��~+E�Dc3V�)JW~�s�&�ڛ�L-Es�^��܉��S!�uhX(M9�e�H~~sRP��B��$�A�)K����R���{9�љ�w�A	?�*��|�m]�;:h���xN�M�;�xrA�5�3����[����ۏkUD��qH>��H��&n��r�d�`t�F���H!o�ҝX���`�	��#X�<��nW��wQ�e5j�2ufT��tl
B���ł7�A�ĎC>9�-9-��(�+��l�j.J�F*d�(m��Ϋ�e�\�@�hslۓ�顜S�<�%��|�\k`�h`f\oh��I&��`!$�� �#Ҳ$<}�F	��>��U��'A��x������/��p��V^�g�_J}_��KS
m_����)��q؋k�}��V�_d�Sߺ����L4�U�|P��4�������	^� ���j�s��y!mX`?���x,�蔺>����ۆN*��z��oMC�G�Hc�.�y&|�V��8�rT��S�5� ρ�f�y�����zO��+�
��7���j�:䯾S�$~2K�IJ<EG�P�mP`��*���7��F�(��u�ѨZܫj���=o�*8�sE���Xt��S=�Ї(���{�N��G�D�`��DuD���H��u����4�Q�����q��j���������.G5By��5B����p��P��"n�޼��v�):���}\T��Q�6��I�����e �o�I�+���4��'���~UѼ����`���j��
�`�c �0L�����h�oRڠ�}�/�Q���7y�;�c�
�x�&���Ɗ<&� ���>�o��@��h�F&�6ox���W��K���5�:�������ǁ]��F��k�30����F�}������R缟�{}4bȞ)�ޖm��u��'Y�wѺ䭘�`����8�rm��B �I����A7�;��E���ɍI�}��tQ�W��`Mp}�h�S	1�����D*8�k�d    F����.��L�i.W�b�MdI@qH"6ѺU���A�%�}�������l�"E;|�lni'-�o|���6�����Jw�t�Ez�J���-Cs������=�l��f!�6�Y�f)�aj���2^V�qU;]�=vD��J�d���o��*��la��_l��B�G��,�)w�z'i��Oj�nQ<c� ���(����+�l�j<r�W����e�:��V% �.F'�"��&�e���%x%�\.���Q��d#�$����q]�\��h��ٗ¦��;�! ̝�e��C������{�mS]�E����_�{ �ߞl}���uĮ7���O����/@�`�ڶ�B� iܛ+��"ˤ9���;`~�{v���C�
cdfz&�o2v���7��1��onhtSB��Ӯ5u�bm������Y(9�׆�?����֭��Tr.fcڮA(���D$*�&襦샩����9=�����~�^�4�u����
��01<���6�������A4�D�榃���wZ���חT_VM�:��$I[M�����1�@?5-�����kl:���o��J�3���(�E������}�Į���y�{bd�Ǻ�sZt8��������߆�"��E� 2 #�.`�t3����D��4�xy��i��ۛXll;�:��hO���ʐL:��s}�ɒ6C��^0�''�9mɌӹF�p5m��x`18�e��j�n�3O��Ui9!s���	���Y�ht��[�:�H}�`ոz�w���.�TWFO�}��*����2@�w��7w��q=�5%�t���	��bpyR�Ӎ���$su�}T`�E��M�ԭ�ؠ�����Oo��~͞��Β��y�G&>i\�s~y��$s��D��w&|k[�ĉc�o.�?{rn�!�d��8`c��|6n����x`bwI����($�t}����f��MjE� ���Թ��0H�y��y_s�d�<�7�X=��3��T�����Y�����o��yw<
^��Ж��1���k��7���+�&hi�EmA�f�\����r����o.��e0�O+�֣�c�g���2���ݺV�f�qwQ�k�g����W�o�B4��L��ﴋ����#�&ˍ���Y�~�Yd�7fqB�S{�M��9�H��3����7`��yL7Zh3���6c&�b���D>�.�.1Թ�L��bM,<������۝3��U����R�����^7�©�ֵ�=������*\ �/�,e�6<�Z�:�x���
���-��_t6�S�9c�=ȜD����`�/�݃t��s���7�Vd�'t���������J䢗��m3���L?$�|�k���i*�魚���xG��;�Ɏ ��tG�ˬ0�T��[޶���,��9�� ��� �h���0���������x�|=wļ�	Rղ�hן��&U�����2�Ѩ�����.�zw.1�M�C����r��X����\�$��V�SWb;(t��E���:S�HM���>�T��س��������ח��4��f咣��/�0��4�#��K󤶯i8
ޏC������.����2s�W�b��bO����A&#rM�jv�$����G:���\�on@@}��)2rv��n�0���7���X��������l��aŒ��3.�o>R����8��uF�<���ؑ�H|$��Ic���$cqqa�1�V&!��ԓE�ex$�a�;0@bm#O�D̞3�Z�{4]�zY4����TMBy�Z�G 	��kI�&�$p\���TAS�����H�5��k�<�y>tHC>�s����^F��6����"�8 ���l��iY5�w}��ӦH$��y*�Ł9��T+s��S���&�|�!�В<�����i#C����[zN?��@~m�L/���lȷ�Ͻ<��Gĉ>:����7N��Y0���H�3sl�r���D~�.�6����` �� ����	�(�=�S���w܉'�v�1 �w�� �.o`��4w�zt'�<6����*�z&�_Gޒ��At�z���"���;Tz�K[:,�s�G�
�1X*\��hG��#��V��C<��rI`����ΤwH�����3g~$���;,0&�Ȳz����~�t�<���[J�B�8b�v����H�U�
���{��yV�I t��.
�
u�;	H�{�,�e�I���3���2��5(dE�&YR����&P�OY"[�G���~���z[1����DZū����|	A? j�n{�Ɉ�X�l���s��$����8�y���;���-�'�.M�����I ��(&ogAc
�^$�=�.���9�Q�+s��"�7�Y����C�6�ǖZ ����:x4��q*�I�e���2Ib&�u�aR�۪�33Sh+�!r��]lB&=3��:Y)� �o�zXVQ������e�����=P�$$��u�� aE�H�5'RϖqP�y��Wlk�*�k׋�C"���zd���ȥzKE�<����+Ö`4wSǺ�no.Z��&���:(���8�����ʼ�U�����4��%�0�P��=K�Yݾ�(�{N���&���q�HDD�`R��eT%B�q��#'퍹AO� ��$�ޫ�� �c�:����+�������pٚ�[^�P�-��S?��|�N\�N�%_>��Nf"�q����ዬ���L�G�I�s��0Ӱ��GA�`��3�����۩("�R�����7��ϒ�`;�qAgV/ʇ5����pxf��%�=N�,��^^�]@�Ym��?Zx������"�U� �R�$��V�N}��}-�\-�&��xf�m�lK#8~R9�ˡ!On��塆�-,ܥj��CZ�ߚT�[7���$X�:<�՗�g��ὠ߲����׻���i?t�_��S`����kz�[���/L���|0rL0�{�5�'��s)����԰̱cF=�M�-�E�bQ�bI�c��[�x�'����������[���I�˃��pt#A��"��RdN��W�Vh=E�b}a׫5kFlRs�4xuv��nn^w���b�yBZ'�ͺ�`�qb�:���rd^C��DF��d��`�\S�(^?�91�&�s_=��K(�S����A�8��:�$�H�=��H(�%� K)�����z_a1@��ˌӢF�+̫�f�j.�4����f̎�"�u�a�ϝ�7W��h��Q�E/m�i�ہ`���~�x�x��w�he"P�7Fԧ�|"���Ŕ7�V��XZ�1�-����O�J����qv�D�fywJ+m$�R����������Ү�NϿ��۫�i煼�	�����im��� ��'��:��~����ą�Sr���#&x���I=�\��2�xZ`J��IK�5G6=�@����$ji.����ksv>pt� �;�v�P�!O�c\)�H�p�:k>�+{�C��Y����9��\��[f��^v���U�.]�\�W���}��&4�o������=T������%�v
y㴄y�krz���E o����w�\��I�x��±���%Z�;
�F�K>NT�k}�&�<Mj�'�a�"��_�T ~?v�H�W@��L4���9��b�(d�렼�p\
:Hj6�A�8�&>�vZ�K��:��������+�� 4��ۮ�>�SӖڠ_{R�
˴Jbxn`�t�䜔Ԥ/Ҫ5�*e�#y�i��`����z�#S����m��������B�'Β�ǹ��(��Sʃ����_niHO�+�&,��\Z�W�-\0:��p.֡@�-����3��J����6}�A�yx���^���;9�Mo�⼼�v�{g���%��nu���I�z�������&�s��!�9���Jj��Y��|�Tm��I_�96oBE��,<o��'}ɱH�`�=eM�Fٽ� ���ѫ�	�CzA$�ư� ��T�s��t����5o �[/�쓸���5���p�yw���SNI   �x?���Lhe���6�}��yy�E�]��ǁ���ҦB�!���S���&!'�U���ƯN�N���F��J뻚������k�݂�T�PP82%�w.��������*������4�U�]&��r���\�kB7gbP8�Ɔ��)��D��7EtB;jsT�]�2��uP�� ����澔��V`ŧS�i������f��ժ7��a5����`��-RE�Xu,L6�W��/"�E��}���*Ym�ecWz�s�|alU��RCНh��\�_�l�d�GYKLFQ4};98�<���ߤ+�c�GGG����no�K8:�Ґ�̥Jj����e��ͨ�����g�̉�Ht�ڶ"�w�2��fcS汯L0�n���6]�}nl�z�޾z�QN=��L-d�z����x4�nmg0�Sn�#_f�Д�+\��a�?;���W���1 �	]�����u��։�|�z9Oo$����_*JT�6��d�����b{ā�> �|�X�'��{`(~��Jzgھ�?~����� �e�H     