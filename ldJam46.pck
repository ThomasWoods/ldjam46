GDPC                                                                               <   res://.import/guy.png-a0613c07e0e5eecfeffebed4f6135d53.stex 05      �       ��bܞ�lfI���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@B      U      -��`�0��x�5�[   res://Scenes/Player.tscn�            �o����A�'�����T   res://Scenes/TestArea.tscn  �      N      ��2���p��풿'I�    res://Scripts/Feeler.gd.remap    R      )       4p�X�cȑ������   res://Scripts/Feeler.gdc�      �      ��Qe�U��g�����    res://Scripts/Player.gd.remap   PR      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc�      b#      =e����C���0sR�J$   res://Scripts/SetCamera2D.gd.remap  �R      .       ��v������́��    res://Scripts/SetCamera2D.gdc   04      �       (k+�uL魡�:�R   res://Sprites/guy.png.import06      �      ��������|=��]{$   res://Sprites/new_spriteframes.tres �8      �      ��K$A�%*vJ�   res://default_env.tres  �A      �       um�`�N��<*ỳ�8   res://icon.png  �R      �      G1?��z�c��vN��   res://icon.png.import   �O      �      �����%��(#AB�   res://project.binary�_      �      �h(-�]l�,��:L$�    [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/new_spriteframes.tres" type="SpriteFrames" id=1]
[ext_resource path="res://Scripts/Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
scale = Vector2( 0.8, 0.8 )
shape = SubResource( 1 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
frames = ExtResource( 1 )
frame = 4
           [gd_scene load_steps=5 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Scenes/Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scripts/SetCamera2D.gd" type="Script" id=3]

[sub_resource type="RectangleShape2D" id=1]

[node name="Node2D" type="Node2D"]

[node name="Floor" type="KinematicBody2D" parent="."]
position = Vector2( 0, 24.634 )
scale = Vector2( 30, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Floor"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="Floor/CollisionShape2D"]
scale = Vector2( 0.3, 0.3 )
texture = ExtResource( 1 )

[node name="Cieling" type="KinematicBody2D" parent="."]
position = Vector2( 0, -100 )
scale = Vector2( 10, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Cieling"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="Cieling/CollisionShape2D"]
scale = Vector2( 0.3, 0.3 )
texture = ExtResource( 1 )

[node name="WallRight" type="KinematicBody2D" parent="."]
position = Vector2( 200, 0 )
rotation = 1.5708
scale = Vector2( 10, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallRight"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="WallRight/CollisionShape2D"]
position = Vector2( -0.0263519, 0 )
scale = Vector2( 0.3, 0.3 )
texture = ExtResource( 1 )

[node name="WallLeft" type="KinematicBody2D" parent="."]
position = Vector2( -100, 0 )
rotation = 1.5708
scale = Vector2( 10, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="WallLeft"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="WallLeft/CollisionShape2D"]
scale = Vector2( 0.3, 0.3 )
texture = ExtResource( 1 )

[node name="Player" parent="." instance=ExtResource( 2 )]

[node name="Camera2D" type="Camera2D" parent="Player"]
script = ExtResource( 3 )
  GDSC            f      ���ׄ�   �����Ķ�   �����϶�   ������¶   ��������Ѷ��   ����������Ѷ   �������Ҷ���   ������Ӷ   ����������������������Ѷ   �������������Ҷ�   ���϶���   ���������������������Ŷ�   ����϶��      body_entered      reset_disabled                     Disabled      Enabled                                                     	   #   
   $      -      6      :      ?      @      G      K      P      Q      W      d      3YY2�  YY0�  PQV�  �  PRR�  QYY;�  9R�  Y;�  V�  YY0�  P�  �  QV�  &P�  �  QV.�  �  �  �  �?  P�  Q�  Y0�	  P�
  QV�  �  �  �  �?  P�  QYY0�  PQV�  .�  �  PQT�  PQY`             GDSC   x   ,   !  #     ������������τ�   ��������������Ҷ   ���������������Ѷ���   �������������¶�   ������������¶��   ���������������ڶ���   ������������������ڶ   �������Ӷ���   �����Ѷ�   ���������������϶���   ��������   �������������϶�   ������϶   �����������Ѷ���   ��������������¶   ����������Ŷ   �������������ض�   �����Ѷ�   ����ⶶ�   �������������ض�   ���������Ҷ�   ��������¶��   ���������¶�   ������ض   ������Ѷ   �������¶���   �������ƶ���   ������������϶��   ���������϶�   ����������������϶��   ����������Ŷ   ��������������Ŷ   ������Ѷ   ��������ݶ��   ������������ƶ��   ��������Ӷ��   ������Ѷ   ����������Ҷ   ���������Ӷ�   �������������Ӷ�   �������޶���   ��������޶��   ������Ѷ   ���������Ҷ�   ��������Ӷ��   ������������Ӷ��   �����������޶���   �������������Ҷ�   �������������Ѷ�   ��������������Ѷ   ��������������Ѷ   ��������ض��   �����������ƶ���   ���������ƶ�   ������������Ӷ��   ����������Ӷ   �����������޶���   ���������޶�   �����������������Ӷ�   ���������������Ӷ���   �����Ҷ�   �������Ӷ���   �������ڶ���   �������ڶ���   �����϶�   ߶��   �������ƶ���   ����������Ŷ   ������¶   ���������Ӷ�   �嶶   �������������ն�   �������Ŷ���   ����׶��   �������������Ŷ�   ����¶��   ����������������Ҷ��   ���������������������Ҷ�   ����������Ӷ   ��������Ӷ��   �����������ƶ���   �����������¶���   ����������¶   ���Ӷ���   ���������޶�   ���ⶶ��   �涶   ���Ӷ���   ������Ҷ   ����Ҷ��   ׶��   ж��   �������ݶ���   ���������¶�   ����������ڶ   ���ƶ���   �������ƶ���   ���������ƶ�   ����������������ƶ��   ��������������ƶ   ���������������ƶ���   ��������ض��   �������޶���   ����������޶   ���������������Ŷ���   �������������Ӷ�   ���������������Ѷ���   ���������Ѷ�   ������������������϶   ��������Ҷ��   ��������Ҷ��   ζ��   �����������϶���   ������������������Ҷ   �����������������¶�   ����������������¶��   �������������������Ѷ���   ��������Ӷ��   ��������۶��   ��������                �         ?   �        �?             @           �C     �?                   @     �>     @@      hit_wall   	   end_slide         airborne      started_jump      started_dash      end_dash      hit_ciel      end_jump      landed        unlock_dash    	   move_down         jump   
   move_right     	   move_left         move_up       dash      run             started_slide         ended_slide    d      
   ended_jump     
   ended_dash        started_wall_slide        ended_wall_slide      started_idling             @?                   	                        !      +   	   ,   
   2      8      @      H      N      T      Z      _      e      f      n      v      |      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2     3     4     5   #  6   $  7   '  8   *  9   -  :   0  ;   3  <   6  =   9  >   <  ?   ?  @   B  A   E  B   H  C   I  D   L  E   O  F   R  G   U  H   V  I   W  J   ]  K   g  L   o  M   x  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   
  e     f     g     h   %  i   )  j   .  k   /  l   6  m   K  n   O  o   Z  p   o  q   s  r   ~  s     t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �     �     �     �     �   $  �   -  �   9  �   ?  �   H  �   Q  �   [  �   \  �   ]  �   c  �   j  �   n  �   r  �   v  �   {  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   
  �     �     �     �     �     �   !  �   &  �   '  �   -  �   .  �   2  �   8  �   <  �   N  �   T  �   X  �   j  �   k  �   q  �   y  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �   
  �     �     �     �     �   $  �   .  �   0  �   5  �   :  �   @  �   H  �   M  �   Q  �   \  �   b  �   q  �   r  �   w  �   {  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   	                 #    .    9    D    E    R  	  _  
  l    y    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    	                 !  !  3YY;�  VY;�  VY;�  VY;�  VY;�  9R�  Y0�  PQV.�  �  YY;�  V�  Y;�  VY;�	  V�  T�
  Y;�  V�  T�
  Y;�  V�  Y;�  VY;�  V�  Y;�  V�  Y;�  V�  YY;�  V�  T�  Y;�  V�  T�
  Y;�  V�  Y;�  V�  Y;�  V�  YY;�  V�  Y;�  VY;�  V�  YY;�  V�  Y;�  V�  Y;�  V�  Y;�  V�	  Y;�  V�  Y;�  V�  Y;�   VY;�!  VY;�"  V�  YY;�#  V�  Y;�$  VY;�%  V�
  Y;�&  V�  Y;�'  V�  YY;�(  V�  Y;�)  VY;�*  VY;�+  V�  Y;�,  V�  Y;�-  V�  Y;�.  V�  Y;�/  V�  YYB�0  YB�1  YB�2  YB�3  YB�4  YB�5  YB�6  YB�7  YB�8  YB�9  YB�:  YB�;  YYB�<  YB�=  YB�>  YB�?  YYY0�@  PQV�  )�A  �B  T�C  PQV�  �  L�A  MLM�  �D  P�  RR�  Q�  �D  P�  RR�  Q�  �D  P�  RR�  Q�  �D  P�  RR�  Q�  �  �D  P�  RR�  Q�  �D  P�  RR�  Q�  �D  P�  RR�  Q�  �  �D  P�  RR�  Q�  �D  P�  RR�  Q�  �  �D  P�  RR�  QYYY0�E  PQV�  �D  P�F  T�G  PQQ�  �U  PQYYY0�H  P�I  QV�  �J  PQ�  &P�$  QV�  �  T�
  �  &P�K  T�L  P�  Q�K  T�M  P�  Q�  �$  �  QV�  �N  PQ�  (V�  &P�K  T�L  P�  QQV�  �O  PQ�  �P  P�I  Q�  �  &P�*  QV.�  &PP�K  T�L  P�  Q�  �  Q�  
�  QV�  �Q  PQ�  &P�  �  QV�  �I  �  'PP�K  T�L  P�  Q�  �  Q�  
�  QV�  �R  PQ�  &P�  �  QV�  �I  �  �  &�  L�  MT�S  PQ�  V�  �T  P�  T�  Q�  '�  L�  MT�S  PQ�  V�  �T  P�  T�U  Q�  &�  L�  MT�S  PQ�  V�  �T  P�  T�V  Q�  '�K  T�M  P�  QV�  &P�K  T�L  P�  QQV�T  P�  T�V  Q�  (V�T  P�  Q�  �  �  �  �K  T�L  P�   Q�  &P�  �  T�U  �  �  T�  QV�  �  YYY0�J  PQV�  ;�W  �F  T�G  PQ�  ;�X  �W  �  S�  )�A  �B  T�C  PQV�  ;�Y  �  S�  )�Z  �  L�A  MV�  &P�Z  	�X  QV�Y  �!  S�  )�[  �Y  V�  �  L�A  MT�\  PQ�  &�K  T�M  P�A  QV�  �  L�A  MT�]  P�W  QYYY0�N  PQV�  &P�$  QV�  �!  �  �  �$  �  �  �&  �'  �  �^  P�"  QY0�O  PQV�  &P�$  QV�  �$  S�  �^  P�#  QYYY0�P  P�I  QV�  &P�K  T�L  P�  QQV�  �_  P�I  Q�  (V�  &P�  �  �  �  QV�!  �  &P�   QV�`  PQ�  &P�  QV�a  PQ�  Y0�_  P�I  QV�  &P�   QV�  &P�!  �  QV.�  'P�  QV�b  PQ�  'P�"  P�  �  QQV�c  PQ�  'P�  �  QV�d  PQYY0�b  PQV�  �!  �  �  �   �  �  �  �  �  �  �	  �  �^  P�  QYY0�c  PQV�  �  �b  PQ�  &P�  QV�  �  �  �  �  �  T�  P�  �  &�  (�  Q�$  �  &P�  QV�  �  �  �  �  �  T�U  P�  �  &�  (�  Q�$  YY0�d  PQV�  &P�  �  QV�  �  �!  �  �b  PQYY0�`  PQV�  �   S�  �^  P�%  QYY0�a  PQV�  �!  �  �  �  YYY0�R  PQV�  �  �  T�U  Y0�Q  PQV�  �  �  T�  YYY0�T  P�e  QV�  &P�*  �)  QV.�  �)  �  �  �*  �  �  �  �e  �  �,  �-  �  �^  P�  QY0�f  PQV�  &P�*  QV.�  �  �  �  �  �  �  �*  �  &P�  QV�g  PQ�  �^  P�&  QY0�g  PQV�)  SYYY0�h  P�I  QV�  &P�  QV�  �i  P�  P�  R�  QQ�  .�  ;�j  �  �  ;�k  �  �  &P�$  QV�  �	  �  �%  �$  �  �i  P�	  Q�  �&  �I  �  &P�&  
�  QV�O  PQ�  'P�*  QV�  �	  �  P�+  &�  (�/  Q�$  �  �  �i  P�	  Q�  �,  �I  �  &P�,  
�  QV�f  PQ�  (V�  �l  P�I  Q�  ;�m  �  �  &P�   P�  P�  �  T�  QP�  �  �  T�U  QQQV�  �m  �  �  �  �  �  �  (V�  �  ;�n  �  T�o  &P�   Q(�  T�o  P�  �  &�  (�  Q�$  S�  �  �	  �  P�n  R�  �m  Q�  ;�p  �i  P�	  Q�  &P�p  �  T�
  QV�  �  (V�  �  �  �  ;�q  �  �  ;�r  �  �  ;�s  �  �  ;�t  �  �  �  �u  P�v  R�  T�w  Q�  �  �u  P�v  R�  T�  Q�  �  �u  P�v  R�  T�U  Q�  �  �u  P�v  R�  T�V  Q�  �  &P�q  �  QV�^  P�  Q�  &P�q  �  QV�^  P�  Q�  &P�r  �  QV�^  P�  Q�  &P�s  �  QV�^  P�  Q�  &P�t  �  QV�^  P�  Q�  &P�j  �  QV�^  P�'  Q�  &P�j  �  QV�^  P�(  Q�  �  &P�  �  �k  QV�^  P�)  Q�  YY0�l  P�I  QV�  &P�  �  QV.�  &P�  �  QV�  �  �  'P�   QV�  &P�  �  �  QV�  �`  PQ�  'P�  �  �  QV�  �  �  �  �I  �*  �  'P�  �  �+  QV�  �  �  �  �I  �  �  (V�  �  �  �  �I  �  (V�  �  �  �  �I  �*  Y`              GDSC                  �����ׄ򶶶�   �����϶�   ������¶                                                       	   	   
   
                                             3YYYYYYYYY0�  PQV�  �  YYYYYY`            GDST               �   PNG �PNG

   IHDR          ��o�   sRGB ���   �IDAT8��T�� K��/�����C�gמ���,�|dPS�!�v��._�h��3Zkx��ں�K��B>��~#�j@L�]lL+X�/ �/���GJC~��1�{�t��*l[
]}��a�ƭ�NNBa5����!�c&����s� l�b^�v�    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/guy.png-a0613c07e0e5eecfeffebed4f6135d53.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/guy.png"
dest_files=[ "res://.import/guy.png-a0613c07e0e5eecfeffebed4f6135d53.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [gd_resource type="SpriteFrames" load_steps=18 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="AtlasTexture" id=1]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 0, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=2]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 16, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=3]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 32, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=4]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 48, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=5]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 0, 16, 16, 16 )

[sub_resource type="AtlasTexture" id=6]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 16, 16, 16, 16 )

[sub_resource type="AtlasTexture" id=7]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 32, 16, 16, 16 )

[sub_resource type="AtlasTexture" id=8]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 48, 16, 16, 16 )

[sub_resource type="AtlasTexture" id=9]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 0, 32, 16, 16 )

[sub_resource type="AtlasTexture" id=10]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 16, 32, 16, 16 )

[sub_resource type="AtlasTexture" id=11]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 32, 32, 16, 16 )

[sub_resource type="AtlasTexture" id=12]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 48, 32, 16, 16 )

[sub_resource type="AtlasTexture" id=13]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 0, 48, 16, 16 )

[sub_resource type="AtlasTexture" id=14]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 16, 48, 16, 16 )

[sub_resource type="AtlasTexture" id=15]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 32, 48, 16, 16 )

[sub_resource type="AtlasTexture" id=16]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 48, 48, 16, 16 )

[resource]
animations = [ {
"frames": [ SubResource( 1 ), SubResource( 2 ), SubResource( 3 ), SubResource( 4 ), SubResource( 5 ), SubResource( 6 ), SubResource( 7 ), SubResource( 8 ), SubResource( 9 ), SubResource( 10 ), SubResource( 11 ), SubResource( 12 ), SubResource( 13 ), SubResource( 14 ), SubResource( 15 ), SubResource( 16 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Feeler.gdc"
       [remap]

path="res://Scripts/Player.gdc"
       [remap]

path="res://Scripts/SetCamera2D.gdc"
  �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         Feeler        language      GDScript      path      res://Scripts/Feeler.gd       base      Area2D     _global_script_class_icons                Feeler            application/config/name0      %   Redslash12 ldJam46 Platforming Engine      application/config/description4      *   Platforming engine started for the ldjam46     application/run/main_scene$         res://Scenes/TestArea.tscn     application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �      display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      
   input/jump`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script      	   input/run`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      
   input/dash`              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            deadzone      ?)   rendering/environment/default_environment          res://default_env.tres        