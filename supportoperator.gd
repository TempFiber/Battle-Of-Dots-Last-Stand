[gd_scene load_steps=15 format=3 uid="uid://8dvmtctp5tdd"]

[ext_resource type="Script" uid="uid://ct3hjjxdvla3i" path="res://supportmuskets.gd" id="1_ybcqe"]
[ext_resource type="Texture2D" uid="uid://bie57iia8p6vb" path="res://wojskablack/Infantry/kropkablaacksupport.png" id="2_ybcqe"]
[ext_resource type="Texture2D" uid="uid://d3tv7pmbwbgfy" path="res://obwufkakola.png" id="3_od3xr"]
[ext_resource type="Texture2D" uid="uid://c4efovye7urb5" path="res://wojskablack/muskets/znakmusket.png" id="4_6wuex"]
[ext_resource type="Texture2D" uid="uid://be7q1urrmjuaa" path="res://strzelanie/2strzelanie.png" id="5_eubsa"]
[ext_resource type="Texture2D" uid="uid://6e1fpkskk606" path="res://medale/medalebranz.png" id="6_fwoos"]
[ext_resource type="Texture2D" uid="uid://cnobuy2uwu6s8" path="res://medale/medalesrebro.png" id="7_eeyrm"]
[ext_resource type="Texture2D" uid="uid://ccxbuybvqvpdf" path="res://medale/medalezloto.png" id="8_mo4s3"]
[ext_resource type="Texture2D" uid="uid://o802dqxmi2l8" path="res://Infantry/kropkablaackcien.png" id="9_bdbew"]

[sub_resource type="CircleShape2D" id="CircleShape2D_0hol4"]
custom_solver_bias = 0.8
radius = 9.0

[sub_resource type="CircleShape2D" id="CircleShape2D_m3cm6"]
radius = 26.0

[sub_resource type="CircleShape2D" id="CircleShape2D_3nkoe"]
radius = 74.0068

[sub_resource type="Curve" id="Curve_mof8g"]
_data = [Vector2(0.0738636, 1), 0.0, 0.0, 0, 0, Vector2(0.909091, 0), 0.0, 0.0, 0, 0]
point_count = 2

[sub_resource type="Curve" id="Curve_2j2b3"]
_limits = [0.0, 200.0, 0.0, 1.0]
_data = [Vector2(0, 1), 0.0, 0.0, 0, 0, Vector2(0.323864, 62.9214), 0.0, 0.0, 0, 0, Vector2(1, 1), 0.0, 0.0, 0, 0]
point_count = 3

[node name="supportmuskets" type="CharacterBody2D" groups=["AllyUnits", "Units", "black_units", "support_units_to_command"]]
position = Vector2(13, 9)
input_pickable = true
script = ExtResource("1_ybcqe")

[node name="Sprite2D" type="Sprite2D" parent="."]
position = Vector2(0, -2.38419e-07)
scale = Vector2(0.106, 0.1)
texture = ExtResource("2_ybcqe")

[node name="hitbox" type="CollisionShape2D" parent="."]
shape = SubResource("CircleShape2D_0hol4")

[node name="AttackArea" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="AttackArea"]
shape = SubResource("CircleShape2D_m3cm6")

[node name="musketattackarea" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="musketattackarea"]
shape = SubResource("CircleShape2D_3nkoe")

[node name="Timer" type="Timer" parent="."]
wait_time = 0.5

[node name="timerleczenia" type="Timer" parent="."]
wait_time = 3.416

[node name="ProgressBar" type="ProgressBar" parent="."]
offset_left = -14.0
offset_top = -15.0
offset_right = 84.0
offset_bottom = 12.0
scale = Vector2(0.285781, 0.228264)

[node name="ammobar" type="ProgressBar" parent="."]
offset_left = -6.0
offset_top = -17.0
offset_right = 92.0
offset_bottom = 10.0
scale = Vector2(0.128665, 0.0560673)
theme_override_colors/font_color = Color(0.330816, 0.372669, 0.375581, 1)
show_percentage = false

[node name="healthlabel" type="Label" parent="."]
visible = false
offset_left = 9.0
offset_top = -4.0
offset_right = 46.0
offset_bottom = 19.0
scale = Vector2(-0.464792, 0.330295)

[node name="timerleczeniav2" type="Timer" parent="."]

[node name="=cooldownleczenia" type="Timer" parent="."]
wait_time = 8.977

[node name="border" type="Sprite2D" parent="."]
visible = false
scale = Vector2(0.333, 0.333)
texture = ExtResource("3_od3xr")

[node name="closefightborder" type="Sprite2D" parent="."]
visible = false
scale = Vector2(0.12, 0.12)
texture = ExtResource("3_od3xr")

[node name="cooldowntimer" type="Timer" parent="."]

[node name="znakmuszket" type="Sprite2D" parent="."]
position = Vector2(19, 11)
scale = Vector2(0.076, 0.074)
texture = ExtResource("4_6wuex")

[node name="rangedattacktimer" type="Timer" parent="."]

[node name="wystrzal" type="Sprite2D" parent="."]
visible = false
position = Vector2(-4, -2)
scale = Vector2(0.02, 0.02)
texture = ExtResource("5_eubsa")

[node name="wystrzal2" type="Sprite2D" parent="."]
visible = false
position = Vector2(4, -2.38419e-07)
scale = Vector2(0.0183333, 0.0155556)
texture = ExtResource("5_eubsa")

[node name="wystrzal3" type="Sprite2D" parent="."]
visible = false
position = Vector2(-3, 4)
scale = Vector2(0.0155556, 0.0155556)
texture = ExtResource("5_eubsa")

[node name="pwystrzale" type="Timer" parent="."]

[node name="Line2D" type="Line2D" parent="."]
width = 0.2
default_color = Color(1, 1, 0, 1)

[node name="cooldownwejscaiwrencz" type="Timer" parent="."]

[node name="AIScanTimer" type="Timer" parent="."]
wait_time = 0.334
autostart = true

[node name="RallyTimer" type="Timer" parent="."]
wait_time = 5.0
one_shot = true

[node name="enemyupdatetimer" type="Timer" parent="."]
wait_time = 0.54
autostart = true

[node name="levelup" type="ProgressBar" parent="."]
offset_left = -6.0
offset_top = -9.0
offset_right = 92.0
offset_bottom = 18.0
scale = Vector2(0.123492, 0.0391082)
show_percentage = false

[node name="medale" type="Node2D" parent="."]

[node name="medalbronz" type="Sprite2D" parent="medale"]
visible = false
position = Vector2(-3.5825, -16.921)
scale = Vector2(0.007, 0.007)
texture = ExtResource("6_fwoos")

[node name="medalsrebro" type="Sprite2D" parent="medale"]
visible = false
position = Vector2(-0.582501, -16.921)
scale = Vector2(0.007, 0.007)
texture = ExtResource("7_eeyrm")

[node name="medalzloto" type="Sprite2D" parent="medale"]
visible = false
position = Vector2(2.4175, -16.921)
scale = Vector2(0.007, 0.007)
texture = ExtResource("8_mo4s3")

[node name="demageparticles" type="CPUParticles2D" parent="."]
emitting = false
amount = 5
lifetime = 0.45
one_shot = true
explosiveness = 1.0
randomness = 1.0
local_coords = true
direction = Vector2(0, 0)
spread = 180.0
gravity = Vector2(0, 250)
initial_velocity_min = 30.0
initial_velocity_max = 30.0
scale_amount_curve = SubResource("Curve_mof8g")
color = Color(1, 0, 0, 1)
anim_speed_curve = SubResource("Curve_2j2b3")

[node name="NavigationAgent2D" type="NavigationAgent2D" parent="."]
avoidance_enabled = true
max_neighbors = 20
debug_enabled = true

[node name="cien" type="Sprite2D" parent="."]
show_behind_parent = true
light_mask = 3
visibility_layer = 2
position = Vector2(-0.427276, 0)
scale = Vector2(0.0838182, 0.0787091)
texture = ExtResource("9_bdbew")

[node name="numer" type="Label" parent="."]
offset_left = -4.0
offset_top = 1.0
offset_right = 21.0
offset_bottom = 24.0
scale = Vector2(0.335936, 0.251522)
text = "1"
horizontal_alignment = 1

[node name="xsy" type="Node2D" parent="."]
position = Vector2(0, -3)
scale = Vector2(0.622571, 0.625657)

[node name="Label" type="Label" parent="xsy"]
offset_left = -4.0
offset_top = -7.0
offset_right = 30.0
offset_bottom = 16.0
scale = Vector2(0.232979, 0.18876)
text = "X"
horizontal_alignment = 1

[connection signal="body_entered" from="AttackArea" to="." method="_on_attack_area_body_entered"]
[connection signal="body_exited" from="AttackArea" to="." method="_on_attack_area_body_exited"]
[connection signal="body_entered" from="musketattackarea" to="." method="_on_musketattackarea_body_entered"]
[connection signal="body_exited" from="musketattackarea" to="." method="_on_musketattackarea_body_exited"]
[connection signal="timeout" from="Timer" to="." method="_on_timer_timeout"]
[connection signal="timeout" from="timerleczenia" to="." method="_on_timerleczenia_timeout"]
[connection signal="timeout" from="=cooldownleczenia" to="." method="_on_cooldownleczenia_timeout"]
[connection signal="timeout" from="rangedattacktimer" to="." method="_on_rangedattacktimer_timeout"]
[connection signal="timeout" from="pwystrzale" to="." method="_on_pwystrzale_timeout"]
[connection signal="timeout" from="cooldownwejscaiwrencz" to="." method="_on_cooldownwejscaiwrencz_timeout"]
[connection signal="timeout" from="enemyupdatetimer" to="." method="_on_enemyupdatetimer_timeout"]
