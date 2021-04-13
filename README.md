# P2AfamefunaUmejiaku
**CS 5331 - Human Computer Interaction**<br/>
**April 2021<br/>
Umejiaku Promise Afamefuna<br/>
The car dashboard (Peugeot) <br/>**

A car's dashboard is a control panel usually position directly ahead of a driver displaying instrumentations and controls of vehicle operations. Here would be analyzing the dashboards of Peugeot brand of cars to answer the following questions -  

1. Using Photos show 5 examples of car dashboards.
2. State the pros vs. cons with the current designs and explain why it is good vs. bad.
3. List your most common features and other more rare uses of a car dashboards.
4. List the controls that the user interacts with the car dashboards.
5. What are some common mistakes you can make with this current designs?
6. Suggest the improvements to make on the control interface. Sketch your solution and justify your design decisions.
7. Come up with your design for the dashboard?
8. Design and implement interactive features
9. Design and implement user feedback using Processing/Processing.js.

<br/>

## Peugeot 504<br/>
Debuted and marketed as Peugeot's flagship at the 1968 Paris Salon, the 504 received the 1969 European Car of the Year being praised for its styling, quality, chassis, ride, visibility, strong engine and refinement with over 3 million vehicles manufactured in its European production and about half a million in Africa.<br/>
![Peugeot 504 Dashboard](504.jpg)<br/>
<p align="center" style=bold> Pros of Peugeot 504 dashboard </p><br/>
1. Most if not all the features in the dashboard are easy to understand.
2. The Used only KM/H in the speedometer hence its easy to know the measurement metric.
<p align="center" style=bold> Cons of Peugeot 504 dashboard </p><br/>
1. Several important features a dashboard should have are not included.


A  picture with a link to the video is shown below.<br/>
[ Click the image below to watch a short video demo.](https://www.youtube.com/watch?v=2r75rA8yok8&ab_channel=AfamefunapromiseUmejiaku) <br/>
[ ![Overview](overview.png)](https://www.youtube.com/watch?v=2r75rA8yok8&ab_channel=AfamefunapromiseUmejiaku)<br/>

Click the link below for a live demo.<br/>
https://afamumejiaku.github.io/Classroom/<br/>
**Libraries Used**<br/>
•	aframe-extras.min.js<br/>
•	aframe-event-set-component.min.js by<br/>
•	aframe-look-at-component.min.js<br/>
•	afame.js<br/>
**I learned the following**<br/>
•	The basics of Three.js, Blender and A-Frame<br/>
•	How the Document Object Model works (DOM)<br/>
•	Front-end design techniques <br/>
•	How to manipulate 3-D .gltf models using blender<br/>
•	General JavaScript library usage<br/>
•	How to use Chrome's web development tools<br/>
•	The meta of WebVR and the existence of cool online virtual reality applications<br/><br/>
**I made all the items used in the project**
<br/><br/>

**Biggest issues**<br/>
•	Smooth Navigation- I was mostly worried about my scene not running smoothly on a mobile device. To compensate for this I made sure to add means of moving in mobile scenes and removed all downloaded materials<br/>
•	Library collision - certain libraries set contradictive variables within one another and this would cause problems with the applications as a whole. For example, the A-Frame Extras Plugin would instantiate movement controls that were supported on a desktop but not on a mobile phone.<br/><br/>
**Description**<br/>
•	The application is written in HTML, JavaScript, and A-Frame.<br/>
**•	OUTSIDE ENVIRONMENT:- <br/>**
**Basic Environment:**- The **Sky** was implement using Aframe Sky Library, the **Ground** was implemented using a plane set at a distance to match the basic Sky distance in Aframe and the **Road** was made using a box primitive to cut across the length of the road.<br/>
 ![skyview.jpg](skyview.jpg)<br/>
 <!-- Sky-->SKY
      <a-sky src="#clear-sunny-sky" rotation="0 0 0"> </a-sky><br/>
 <!-- Ground | Realistic Style-->GROUND
      <a-plane material="color: #FFFFFF;  src: #floor; repeat: 500 500;  normal-map: #floor-NRM; normal-texture-repeat: 5000 5000" rotation="-90 0 0" scale="10000 10000 1" > </a-plane>ROAD
 <!-- Road -->
      <a-box material="src: #road; repeat: 2 10000; normal-map: #road-NRM;normal-texture-repeat: 10000 10000; normal-scale: 1 1;  roughness: 1.2" height="0.22" width="10" depth="10000" position="0 0.2 0" static-body  >  </a-box>
**Traffic Light –** The Traffic light was made using a combination of 3 Cylinders, a box and a cone. It was animated to show the changes that normally accompany a traffic light using Aframe Animations library. You can click the image below Street Light to watch a demonstration. <br/>
<!-- Traffic Light  1-->TRAFFIC LIGHT
      <a-entity position="-5 0 -15">
        <a-cone color="#caccce" radius-bottom="0.4"radius-top="0.2"  height="10"
          static-body  ></a-cone>
        <a-box  color="#000000" depth="1" height="3.5" width="1"  position     ="0 4.2 0" static-body ></a-box>
<a-cylinder  color="#008000"  position="0 3.1 0" radius="0.4" height="1.1" rotation="90 90 90"  static-body
animation="property: material.color; from:#008000; to:#D3D3D3 ; dir:alternate;  loop: true; dur: 9000; easing: easeInOutExpo; delay: 4500"></a-cylinder>
<a-cylinder color="#D3D3D3"position="0 4.2 0"radius="0.4" height="1.1"
rotation="90 90 90" static-body
animation="property: material.color; from:#D3D3D3; to: #FFFF00; dir:alternate;  loop: true; dur: 9000; easing: easeInExpo"></a-cylinder>
<a-cylinder color="#D3D3D3" position="0 5.3 0"radius="0.4" height="1.1"
rotation="90 90 90" static-body
animation="property: material.color; from:#D3D3D3; to:#FF0000 ; dir:alternate;  loop: true; dur: 9000; easing: easeInOutExpo; delay: 4500" ></a-cylinder>
</a-entity>
**Street Light:–** The Street light was made using a combination of 2 Cones only. 
  <!-- Street Light  1-->STREET LIGHT
 <a-entity position="0 0 -15">
 <a-cone color="#caccce" radius-bottom="0.4" radius-top="0.2" height="10"
 static-body ></a-cone>
<a-cone color="#caccce" radius-bottom="0.2" radius-top="0.7" height="0.7"
position="0 5.3 0" transparent="false" opacity="0.4" static-body
> </a-cone>       </a-entity>
 [Click the image below to watch a short video demo.](https://www.youtube.com/watch?v=au_s3KO9yzE&ab_channel=AfamefunapromiseUmejiaku)<br/>
 
[ ![trafficview](trafficview.jpg)](https://www.youtube.com/watch?v=au_s3KO9yzE&ab_channel=AfamefunapromiseUmejiaku) <br/>

**Building :–** The building was made using a combination of several Aframe box primitive to make the walls, doors and windows, 3 segmented cylinders primitives were used to make the pillars, and box primitives were used to make the floor, ceiling and roofing as shown in the picture below. The doors and windows were animated using the animation library in Aframe to open and close upon gaze or click.<br/>
<!-- Floor -->FLOOR
<a-entity position="25 0.1 25">
<a-box material="src: #classTile; repeat: 30 20;
height="0.4" width="20" depth="30" position="0 0.2 0" static-body> </a-box>
<!-- Ceiling -->CEILING
<a-box material="src: #ceiling; repeat: 20 30;
 height="0.1" width="20" depth="30" position="0 8 0" static-body>
<!-- Roof -->ROOF
<a-box material="src: #roof; repeat: 30 20; height="0.3" width="20" depth="30" position="0 8.11 0" colour="black" static-body> </a-box>
<!—wall in several segments Showing two here -->
<a-box height="4"  width="10" depth="1" position="5 0 -14.5" src="wall.jpg"
 repeat="20 4" roughness="0.5" static-body></a-box>
<a-box height="4" width="10" depth="1" position="-5 0 -5"src="wall.jpg"
 repeat="20 4"normal-map="#wall-NRM" roughness="0.5"static-body></a-box>
<!—window with animation function -->
<a-box height="4" width="4" depth="0.5" position="-4 4 14.75" src="window.jpg"
roughness="0.5" opacity="0.7"
animation="property: position; to:-  6 14.5; easing: linear; dur: 3000; startEvents: fusing"
animation__2="property: position; to:- 4 14.75; easing: linear; dur: 3000;startEvents: click"  static-body > </a-box>
<!—Glass Wall -->GLASS WALL
<a-box height="8" width="1" depth="5" position="-9.5 2 -2.5" src="glasswall.jpg"
opacity="0.9" static-body > </a-box>
<!—Door with animation function -->
<a-box height="6" width="0.3" depth="2" position="0 3 -13" src="door.jpg"
animation="property: rotation; to:0 90 0; easing: linear; dur: 3000; startEvents: fusing"
animation__2="property: rotation; to:0 0 0; easing: linear; dur: 3000;startEvents: click"  static-body ></a-box>
<!—Pillars-->
<a-entity position="-7.5 0 -12.5"> <a-cylinder src="wall.jpg" repeat="4 2"
Height="4" position="0 4 0" static-body ></a-cylinder> 
<a-cylinder src="wall.jpg" repeat="1 1" normal-map="#wall-NRM" roughness="0.5"
radius="1.5" segments-radial="8" Height="2" position="0 7 0" static-body
></a-cylinder> <a-cylinder src="wall.jpg" repeat="4 2" normal-map="#wall-NRM"
normal-texture-repeat="4 2" roughness="0.5" radius="2" segments-radial="8"
 Height="4" position="0 2 0" static-body ></a-cylinder></a-entity></a-entity>

<br/> [Click the image below to watch a short video demo.](https://www.youtube.com/watch?v=2u3ibCEF7rA&ab_channel=AfamefunapromiseUmejiaku)<br/>
 [![Buildings](buildings.jpg)](https://www.youtube.com/watch?v=2u3ibCEF7rA&ab_channel=AfamefunapromiseUmejiaku)<br/>
 
**Car Park:-** The car park was made using the Aframe box primitive
 <!-- Car Park  1-->CAR PARK
      <a-entity position="25 0.15 -25">
<a-box material="src: #road; repeat: 4 30;roughness: 0.5"
 height="0.4"    width="20"  depth="30"position="0 0.2 0" static-body ></a-box>
  </a-entity>
**Round about:-** The roundabout was made using serveral Aframe cylinder primitive and 2 box primitive to form the walk way.
      <!-- center Grass --> CENTER GRASS
<a-cylinder material="src: #grass; repeat: 100 100; normal-map: #grass-NRM;
normal-texture-repeat: 1000 1000 normal-scale: 1 -1; roughness: 0.5" 
position="0 0.3 0" radius="10" height="0.35" static-body ></a-cylinder>
<!-- center --> CENTER PIECE
<a-cylinder material="src: #flagTile; repeat: 50 50; normal-map: #flagTile-NRM;
normal-texture-repeat: 50 50 normal-scale: 1 1; roughness: 0.2" position="0 0.35 0"  radius="5" height="0.4"  static-body></a-cylinder>
<!-- Round About  --> ROUNDABOUT
<a-cylinder material="src: #tile; repeat: 100 100; normal-map: #tile-NRM;
position="0 0.2 0" radius="15" height="0.35" static-body ></a-cylinder>
<!-- walk way 1 --> WALKWAY
<a-box material="src: #tile; repeat: 40 100; normal-map: #tile-NRM; normal-texture-repeat: 40 100;"  height="0.3" width="7" depth="60" position="0 0.2 0"
rotation="0 45 0" color="#ffffff" static-body>  </a-box>
**Bench:-** The Bench outside was made using two Aframe Box Primitives and 4 cylinders primitives as the legs.<br/>
**INSIDE ENVIRONMENT:- <br/>
Office:-** The Office contained **Wall Portraits and their areas of specialization of several lectures made in Aframe**, it also contains **Chairs, Desk and Fan made in Blender**. The wall frames made using TTU logo transforms to Covid warning signs and several work stations are closed down during the coronavirus period. The Computers were made using Aframe Box Primitives and the image primitive.<br/>
<!—Importing the Desk -->Importing the Desk
<a-entity gltf-model="#desk" rotation="0 -90 0" scale="0.65 0.6 0.65"
position="9 -1.4 5">
<!-- Computer -->COMPUTER
<a-entity position="3.7 6.5 2.5" scale="1.5 3 1" >
<a-box color="black"depth="0.3"height="0.1"width="0.5"position="0 0 0"></a-box>
<a-box color="black"depth="0.1"height="0.3"width="0.2"position="0 0.2 0"></a-box>
<a-box color="black"depth="0.1"height="0.9"width="1.3"position="0 0.6 0">
<a-image id="screen1"src="#welcome"position="0 0 0.051" width="1.1" height="0.8"
 ></a-image>  </a-box> </a-entity> </a-entity>
<!—Importing the Chair -->Importing the Chair
<a-entity gltf-model="#Chair"rotation="0 90 0"scale="0.4 0.4 0.4" position="4.2 0 9.3"static-body></a-entity>
<!—wall Frame --><br/>WALL FRAME
<a-box material="src: #tommy"position="-9.1 5.7 6.25" height="4"width="0.3"
depth="2" shader="flat"> </a-box>

![Office](office.jpg)

 
**Classroom:**- The Classroom contained **Wall painting of TTU, a Lecture desk equipped with a computer that plays a sound mimicking a lecture, a White board, a TV screen made in Aframe, and also contains 12chairs, 6 tables and fan made in Blender.** The wall painting made using TTU logo transforms to Covid warning signs and several table and chairs disappear as well as the lecturer and the computer on the lecturers desk is disabled but the whiteboard turns into a television with the player beneath it.
 
![Classroom](classroom.jpg)
**Video and Audio Lecture:-** The Video and audio was inserted using were inserted using the Aframe primitive for audio and video but to make it work effectively, I had to add the Play and Pause features using JavaScript.
<script>
      AFRAME.registerComponent('play', {
        init: function () {
          var myEl = document.querySelector('#man')
          this.el.addEventListener('click', function () {
            myEl.components.sound.playSound()
          })
        },
      })
    </script>

    <script>
      AFRAME.registerComponent('play-pause', {
        init: function () {
          var myVideo = document.querySelector('#lectures')
          var videoControls = document.querySelector('#videoControls')
          this.el.addEventListener('click', function () {
            if (myVideo.paused) {
              myVideo.play()
              videoControls.setAttribute('src', '#pause')
            } else {
              myVideo.pause()
              videoControls.setAttribute('src', '#play')
            }
          })
        },
      })
    </script>
<br/>References<br/>
•	https://aframe.io/<br/>
•	Danilo Pasquariello. Design and prototype cross-platform virtual reality experiences April 2020<br/>
•	Don McCurdy data visualization, and graphics. https://github.com/donmccurdy

