GDPC                                                                               @   res://.import/Bullet.png-a9ae4891e2d4fc2e248141055a5982af.stex  �      �       [XH��fr�!�Fce�@   res://.import/Player.png-76ca772d9ae66dc618d80a2306a70384.stex  �      �       `S1~kُ=���D��T   res://.import/Powerp_bulletspeed Sprite.png-5793e78fc058c56cd19dcce6c5e9aef2.stex    .      �       ��d�Zc-��6i��P   res://.import/enemy octopus sprite1.png-b92c232f801120ac4d8427db6aa8b0df.stex   �      �       ���� ��B����P   res://.import/enemy octopus sprite2.png-39009f8c028ee60dbd2b6a93c5aaf99a.stex   0      �       ��q@�7�
2�U2?$   res://core/Bullet/Bullet.png.import �	      �      9!ir��t
��$sY    res://core/Bullet/Bullet.tscn   P      I      oT�R<p^sM���,   res://core/Bullet/scripts/Bullet.gd.remap   �@      5       �-�_WG5�r�$   res://core/Bullet/scripts/Bullet.gdc�      �      �^�<P4���:���Ŀ(   res://core/enemy/EnemyOctopus.gd.remap   A      2       ]�*�����ej���$   res://core/enemy/EnemyOctopus.gdc   `            Ӽ�]]���N�����$   res://core/enemy/EnemyOctopus.tscn  p      +      PX-���Yb�"�@�[F64   res://core/enemy/enemy octopus sprite1.png.import   @      �      *��2���g| HFm4   res://core/enemy/enemy octopus sprite2.png.import   �      �      vbc�U?�%K�1%�$   res://core/player/Player.png.import p      �      �eɆ.kmc���K꾱    res://core/player/Player.tscn   0"      �      b��bP�K<�TL?m,   res://core/player/scripts/Player.gd.remap   @A      5       0�P�_�C����k��$   res://core/player/scripts/Player.gdc%      �      R��9<�a.����H   res://core/powerups/bullet speed/Powerp_bulletspeed Sprite.png.import   �.      �      	��->:p J��|�&H@   res://core/powerups/bullet speed/Powerup_bulletspeed.gd.remap   �A      I       ?�(��+.�:��bh 8   res://core/powerups/bullet speed/Powerup_bulletspeed.gdc�1      �      ����<�C��:X <   res://core/powerups/bullet speed/Powerup_bulletspeed.tscn   p3      .      h��ֲ�y��h�|�;�    res://core/world/World.gd.remap �A      +       P0���x��:"���~   res://core/world/World.gdc  �5      W      4>��>�E����!��   res://core/world/World.tscn  <      �      �g.����L`�#B���   res://project.binary B      K      �qLr����cA�O�@�    GDST                �   WEBPRIFF|   WEBPVP8Lo   /�7��m&���m�Դm���g�3�I�mS���=�?Z ځ݀���HR$�R4D�����	L^�W ����nA0W/�$�RR�Qn���,'�OD�خ              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Bullet.png-a9ae4891e2d4fc2e248141055a5982af.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://core/Bullet/Bullet.png"
dest_files=[ "res://.import/Bullet.png-a9ae4891e2d4fc2e248141055a5982af.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [gd_scene load_steps=4 format=2]

[ext_resource path="res://core/Bullet/scripts/Bullet.gd" type="Script" id=1]
[ext_resource path="res://core/Bullet/Bullet.png" type="Texture" id=2]

[sub_resource type="CapsuleShape2D" id=1]

[node name="Bullet" type="Area2D"]
position = Vector2( 38, 10 )
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
rotation = 1.5708
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[connection signal="body_entered" from="." to="." method="_on_Bullet_body_entered"]
       GDSC            �      ���ׄ�   �������������ض�   ������������ζ��   �����������Ҷ���   ������������Ӷ��   �����϶�   �����������¶���   �����������������ض�   �������Ŷ���   ����׶��   ��������Ӷ��   �������ڶ���   ϶��   �������ض���   ζ��   ���Ӷ���   ���������Ӷ�   ���������������Ŷ���   ����������������������Ҷ   ���϶���   ���������Ҷ�   ��������¶��   d            	   _is_enemy         cazzi                                              #      -   	   .   
   5      ;      J      Z      `      g      i      j      k      l      m      t      }      �      �      �      3Y;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  �  YY0�  PQV�  �  �  PQT�  PQ�  Y0�  P�	  QV�  �  �  �	  �  �
  P�  P�  P�  R�  T�  QQQ�  &T�  T�  �  PQT�  T�  V�  T�  PQY0�  P�	  QV�  -YYYYY0�  P�  QV�  &�  T�  P�  QV�  �  T�  P�  Q�  �?  P�  Q�  Y`             GDSC            W      ������������τ�   �����������޶���   �����������Ӷ���   �������Ŷ���   ����׶��   ��������Ӷ��   ��������϶��   ��������¶��   �����Ӷ�   ���������Ӷ�   ���������Ӷ�                                
                  %      &      ,   	   .   
   8      >      F      L      R      U      3YY;�  V�  Y;�  V�  Y0�  P�  QV�  T�  P�  PR�  QQ�  Y0�  PQV�  -Y0�  P;�  V�  QV�  T�  �  �  &T�  �  V�  T�	  PQY0�
  PQV�  .�  Y`            [gd_scene load_steps=6 format=2]

[ext_resource path="res://core/enemy/enemy octopus sprite1.png" type="Texture" id=1]
[ext_resource path="res://core/enemy/enemy octopus sprite2.png" type="Texture" id=2]
[ext_resource path="res://core/enemy/EnemyOctopus.gd" type="Script" id=3]

[sub_resource type="CapsuleShape2D" id=1]
radius = 37.0

[sub_resource type="SpriteFrames" id=2]
animations = [ {
"frames": [ ExtResource( 1 ), ExtResource( 2 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[node name="Enemy" type="KinematicBody2D"]
script = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -7, 0 )
shape = SubResource( 1 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
scale = Vector2( 5, 5 )
frames = SubResource( 2 )
playing = true
     GDST                z   WEBPRIFFn   WEBPVP8Lb   /�/ HqB,Hqk,L���S��������0�m$h�t��j��l��3s"�?�h=���,��p Ke��屳�<�� 4TT��r���           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/enemy octopus sprite1.png-b92c232f801120ac4d8427db6aa8b0df.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://core/enemy/enemy octopus sprite1.png"
dest_files=[ "res://.import/enemy octopus sprite1.png-b92c232f801120ac4d8427db6aa8b0df.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST                z   WEBPRIFFn   WEBPVP8Lb   /�' HqB,Hqk,L���S���������A�H�4X�A�-�?�}� D�����?G�P|8��no�\\��6�����:u
;l�J�d          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/enemy octopus sprite2.png-39009f8c028ee60dbd2b6a93c5aaf99a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://core/enemy/enemy octopus sprite2.png"
dest_files=[ "res://.import/enemy octopus sprite2.png-39009f8c028ee60dbd2b6a93c5aaf99a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST                �   WEBPRIFF�   WEBPVP8L|   /�7��m6T ��m6U g���4��@�ZE�� ����z'���H��|Ѐ�
~|p�� ���ECD��m��ހ� С�Ȕ�H8wvf�s�q����{.a`�Jx����G�v[remap]

importer="texture"
type="StreamTexture"
path="res://.import/Player.png-76ca772d9ae66dc618d80a2306a70384.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://core/player/Player.png"
dest_files=[ "res://.import/Player.png-76ca772d9ae66dc618d80a2306a70384.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [gd_scene load_steps=4 format=2]

[ext_resource path="res://core/player/scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://core/player/Player.png" type="Texture" id=2]

[sub_resource type="CapsuleShape2D" id=1]
radius = 37.0

[node name="Player" type="Area2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -7, 0 )
shape = SubResource( 1 )

[node name="Timer" type="Timer" parent="."]

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 5, 5 )
texture = ExtResource( 2 )

[connection signal="body_entered" from="." to="." method="_on_Player_body_entered"]
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
          GDSC   +      <   b     ���ׄ�   �����������Ҷ���   ����������������Ҷ��   ������������޶��   �����������������޶�   ������������ݶ��   �����������������ݶ�   ����������Ӷ   ���������������Ӷ���   ��������������������Ҷ��   �������������������������Ҷ�   �����������Ҷ���   ���������������ض���   �������������Ҷ�   �������Ŷ���   ����׶��   ���������������¶���   �����϶�   �������Ӷ���   ����¶��   ����¶��   �������ض���   ζ��   �����������¶���   �����������������ض�   ϶��   ������������¶��   ����������¶   �������Ӷ���   ��������۶��   ��������Ҷ��   ���Ӷ���   �������������Ҷ�   ����������������¶��   ����������������������Ҷ   ���϶���   ���������Ҷ�   �����������ƶ���   ���������Ӷ�   ���������¶�   ���¶���   ���Ӷ���   ���������Ӷ�   
      d                            res://core/Bullet/Bullet.tscn         Timer      2         _is_powerup       ss     	   _is_enemy         Control/Label_PlayerHealth        HEALTH:                                             '      0      7   	   <   
   =      E      F      M      Q      R      X      a      b      h      p      q      w      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .     /     0     1     2     3      4   %  5   +  6   4  7   <  8   N  9   T  :   Z  ;   `  <   3YY;�  V�  9�  Y;�  V�  �  9�  Y;�  V�  �  9�  Y;�  V�  �  9�  Y;�	  V�  �  9�
  Y;�  V�  �  Y;�  V�  YY;�  ?P�  QYY0�  P�  QV�  �  PQ�  Y0�  PQV�  �  P�  QT�  PQ�  Y0�  PQV�  T�  T�  �  YY0�  PQV�  �  �  PQT�  PQT�  �  T�  T�  �  YY0�  PQV�  ;�  �  T�  PQ�  �  T�  T�  �  �  T�  �  �  T�  P�  Q�  Y0�  P;�  V�  QV�  �  �  Y0�  P;�  V�  QV�  �  �  Y0�  P;�  V�  QV�  �  �  Y0�  P;�  V�  QV�  �  �  Y0�
  P;�   V�  QV�  �	  �   YY0�!  PQV�  �  PQ�  �  P�  QT�  P�	  QYYYYY0�"  P�#  QV�  &�#  T�$  P�  QV�  �?  P�	  Q�  �#  T�%  PQ�  &�#  T�$  P�
  QV�  �  �#  T�&  PQ�  �'  PQT�  P�  QT�(  �  �  P�  Q�  �#  T�)  PQ�  &�  
�  V�  T�*  PQY`         GDST                �   WEBPRIFF�   WEBPVP8Lv   /�/��m#����U$�2i�:��I�>m�0����?ZHϵ���#�� ��F[�@�p��p����O ��Ȼ��JS�`�䭥�|6� \U�1����y�8k�/��      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Powerp_bulletspeed Sprite.png-5793e78fc058c56cd19dcce6c5e9aef2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://core/powerups/bullet speed/Powerp_bulletspeed Sprite.png"
dest_files=[ "res://.import/Powerp_bulletspeed Sprite.png-5793e78fc058c56cd19dcce6c5e9aef2.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDSC   
         <      ������������τ�   �������Ŷ���   ����׶��   ��������Ӷ��   ����������ƶ   �����������ƶ���   ���������¶�   �������Ӷ���   �����������Ҷ���   ���������Ӷ�                   Player     !                      
                               !   	   '   
   4      :      3YY0�  P�  QV�  T�  P�  PR�  QQYY0�  PQV�  -YY0�  PQV�  �  PQT�  P�  QT�  �  �  T�	  PQY`         [gd_scene load_steps=4 format=2]

[ext_resource path="res://core/powerups/bullet speed/Powerup_bulletspeed.gd" type="Script" id=1]
[ext_resource path="res://core/powerups/bullet speed/Powerp_bulletspeed Sprite.png" type="Texture" id=2]

[sub_resource type="CircleShape2D" id=1]

[node name="Powerup_bulletspeed" type="KinematicBody2D"]
scale = Vector2( 3.08, 3.08 )
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
  GDSC         #   �      ���ӄ�   ��������������������Ҷ��   ��������������������Ķ��   ����������������ڶ��   �������������Ŷ�   ��������������������Ҷ��   �������Ŷ���   ����׶��   �������Ӷ���   ���¶���   ��������¶��   �����������϶���   ������������Ŷ��   �������Ӷ���   �������ض���   ζ��   �����������¶���   ���Ӷ���   ϶��   ��������Ҷ��   �������������ƶ�   �������ƶ���   ��������������������������¶   ������������������������¶��   ��������������������������¶   ����¶��   "   res://core/enemy/EnemyOctopus.tscn                 9   res://core/powerups/bullet speed/Powerup_bulletspeed.tscn          Control/Label_DifficultyIncrease   
   Difficulty                  TimerDifficulty          2         ?      TimerSpawnEnemy                                            &      '   	   .   
   L      R      V      _      o      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   3YY;�  ?PQY;�  V�  �  Y;�  V�  �  Y;�  V�  Y;�  ?P�  QYY0�  P�  QV�  T�  P�  QT�	  �  �  �  P�  Q�  �  P�  P�  QT�
  QY0�  PQV�  �%  PQ�  ;�  �  T�  PQ�  �  T�  T�  �  PQT�  T�  �  �  �  T�  T�  �(  P�	  R�  PQT�  T�  �	  Q�  T�  P�  QY0�  PQV�  ;�  �  T�  PQ�  �%  PQ�  �  T�  T�  �  PQT�  T�  �  �  �  T�  T�  �(  P�	  R�  PQT�  T�  �	  Q�  T�  P�  Q�  Y0�  PQV�  �  �
  �  �  �  Y0�  PQV�  �  PQYYYY0�  PQV�  �  PQ�  �  P�  QT�  P�  QY`         [gd_scene load_steps=3 format=2]

[ext_resource path="res://core/player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://core/world/World.gd" type="Script" id=2]

[node name="World" type="Node2D"]
script = ExtResource( 2 )

[node name="Player" parent="." instance=ExtResource( 1 )]

[node name="TimerDifficulty" type="Timer" parent="."]
wait_time = 10.0
autostart = true

[node name="TimerPowerups" type="Timer" parent="."]
wait_time = 10.0
autostart = true

[node name="Control" type="Control" parent="."]
margin_right = 40.0
margin_bottom = 40.0

[node name="Label_PlayerHealth" type="Label" parent="Control"]
margin_left = 460.0
margin_top = 560.0
margin_right = 500.0
margin_bottom = 600.0
text = "HEALTH: 100"

[node name="Label_DifficultyIncrease" type="Label" parent="Control"]
margin_right = 40.0
margin_bottom = 14.0

[node name="TimerSpawnEnemy" type="Timer" parent="."]
autostart = true

[connection signal="timeout" from="TimerDifficulty" to="." method="_on_TimerDifficulty_timeout"]
[connection signal="timeout" from="TimerPowerups" to="." method="_on_TimerPowerups_timeout"]
[connection signal="timeout" from="TimerSpawnEnemy" to="." method="_on_TimerSpawnEnemy_timeout"]
               [remap]

path="res://core/Bullet/scripts/Bullet.gdc"
           [remap]

path="res://core/enemy/EnemyOctopus.gdc"
              [remap]

path="res://core/player/scripts/Player.gdc"
           [remap]

path="res://core/powerups/bullet speed/Powerup_bulletspeed.gdc"
       [remap]

path="res://core/world/World.gdc"
     ECFG      application/config/name         ARCADE_StarDestroyer   application/run/main_scene$         res://core/world/World.tscn    display/window/size/width      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep)   physics/common/enable_pause_aware_picking              