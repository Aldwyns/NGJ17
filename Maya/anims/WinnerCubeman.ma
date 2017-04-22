//Maya ASCII 2015 scene
//Name: WinnerCubeman.ma
//Last modified: Sun, Apr 23, 2017 12:08:37 AM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.403489428385342 77.782846023972525 301.83042947631634 ;
	setAttr ".r" -type "double3" -4.53835272963964 0.60000000000053633 -3.106180744977797e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 286.23592671849627;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.5067062021407764e-014 70.108748073102518 -3.907985046680551e-014 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Cubeman_rigForAnim:CubemanGrp";
createNode transform -n "Cubeman_rigForAnim:Cubeman" -p "Cubeman_rigForAnim:CubemanGrp";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -0.0021669433594253551 0 ;
	setAttr ".sp" -type "double3" 0 -0.0021669433594253551 0 ;
createNode mesh -n "Cubeman_rigForAnim:CubemanShape" -p "Cubeman_rigForAnim:Cubeman";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[6:8]" -type "float3"  2.3283064e-010 0 2.9802322e-008 
		-2.3283064e-010 0 -2.9802322e-008 0 0 0;
	setAttr ".vcs" 2;
createNode mesh -n "Cubeman_rigForAnim:CubemanShapeOrig" -p "Cubeman_rigForAnim:Cubeman";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.1875 0.125 0.1875 0.375 0.5625 0.625 0.5625
		 0.875 0.1875 0.625 0.1875 0.375 0.12499999 0.125 0.12499999 0.375 0.625 0.625 0.625
		 0.875 0.12499999 0.625 0.12499999 0.375 0.062499996 0.125 0.062499996 0.375 0.6875
		 0.625 0.6875 0.875 0.062499996 0.625 0.062499996;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -12.0070495605 -0.0021672025 12.0070495605
		 12.0070495605 -0.0021672025 12.0070495605 -12.0070495605 24.011932373 12.0070495605
		 12.0070495605 24.011932373 12.0070495605 -12.0070495605 24.011932373 -12.0070495605
		 12.0070495605 24.011932373 -12.0070495605 -12.0070495605 -0.0021672025 -12.0070495605
		 12.0070495605 -0.0021672025 -12.0070495605 -12.0070495605 18.0084075928 12.0070495605
		 -12.0070495605 18.0084075928 -12.0070495605 12.0070495605 18.0084075928 -12.0070495605
		 12.0070495605 18.0084075928 12.0070495605 -12.0070495605 12.0048828125 12.0070495605
		 -12.0070495605 12.0048828125 -12.0070495605 12.0070495605 12.0048828125 -12.0070495605
		 12.0070495605 12.0048828125 12.0070495605 -12.0070495605 6.0013580322 12.0070495605
		 -12.0070495605 6.0013580322 -12.0070495605 12.0070495605 6.0013580322 -12.0070495605
		 12.0070495605 6.0013580322 12.0070495605;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 16 0 1 19 0 2 4 0
		 3 5 0 4 9 0 5 10 0 6 0 0 7 1 0 8 2 0 9 13 0 8 9 1 10 14 0 9 10 1 11 3 0 10 11 1 11 8 1
		 12 8 0 13 17 0 12 13 1 14 18 0 13 14 1 15 11 0 14 15 1 15 12 1 16 12 0 17 6 0 16 17 1
		 18 7 0 17 18 1 19 15 0 18 19 1 19 16 1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 35 -5
		mu 0 4 0 1 31 26
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 32 31 -4 -30
		mu 0 4 28 29 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -32 34 -6
		mu 0 4 1 10 30 31
		f 4 10 4 30 29
		mu 0 4 12 0 26 27
		f 4 -15 12 6 8
		mu 0 4 15 14 2 13
		f 4 2 9 -17 -9
		mu 0 4 4 5 17 16
		f 4 -19 -10 -8 -18
		mu 0 4 19 18 11 3
		f 4 -20 17 -2 -13
		mu 0 4 14 19 3 2
		f 4 -23 20 14 13
		mu 0 4 21 20 14 15
		f 4 16 15 -25 -14
		mu 0 4 16 17 23 22
		f 4 -27 -16 18 -26
		mu 0 4 25 24 18 19
		f 4 -28 25 19 -21
		mu 0 4 20 25 19 14
		f 4 -31 28 22 21
		mu 0 4 27 26 20 21
		f 4 24 23 -33 -22
		mu 0 4 22 23 29 28
		f 4 -35 -24 26 -34
		mu 0 4 31 30 24 25
		f 4 -36 33 27 -29
		mu 0 4 26 31 25 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "Cubeman_rigForAnim:root" -p "Cubeman_rigForAnim:CubemanGrp";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "Cubeman_rigForAnim:head" -p "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.2046343010045723e-015 24.023891858327175 -2.6451513466228243e-016 1;
	setAttr ".radi" 2;
createNode nurbsCurve -n "Cubeman_rigForAnim:headShape" -p "Cubeman_rigForAnim:head";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.014141287407684 4.7982373409884682e-017 -14.014141287407613
		-1.7755068478784916e-015 6.7857323231109134e-017 -13.111981568799211
		-14.014141287407647 4.7982373409884713e-017 -14.014141287407647
		-13.11198156879923 1.9663354616187859e-032 -5.4245633387155918e-015
		-14.014141287407647 -4.7982373409884694e-017 14.014141287407647
		-4.230482473023156e-015 -6.7857323231109146e-017 13.111981568799211
		14.014141287407627 -4.7982373409884719e-017 14.014141287407673
		13.11198156879923 -3.6446300679047921e-032 5.417431762640292e-015
		14.014141287407684 4.7982373409884682e-017 -14.014141287407613
		-1.7755068478784916e-015 6.7857323231109134e-017 -13.111981568799211
		-14.014141287407647 4.7982373409884713e-017 -14.014141287407647
		;
createNode joint -n "Cubeman_rigForAnim:root" -p "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.7671886375918984 -24.660454319758909 -6.9388939039072284e-018 ;
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.2046343010045723e-015 0 -2.6451513466228243e-016 1;
	setAttr ".radi" 2;
createNode nurbsCurve -n "Cubeman_rigForAnim:squashShape" -p "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		16.617817655722373 4.7982373409884682e-017 -16.617817655722355
		-2.3616961506118074e-015 6.7857323231109134e-017 -23.501143105765625
		-16.61781765572233 4.7982373409884713e-017 -16.617817655722355
		-23.501143105765653 1.9663354616187859e-032 -9.9116271301488007e-015
		-16.61781765572233 -4.7982373409884694e-017 16.617817655722334
		-6.7618497951974149e-015 -6.7857323231109146e-017 23.501143105765625
		16.61781765572232 -4.7982373409884719e-017 16.617817655722334
		23.501143105765653 -3.6446300679047921e-032 9.5209259963203005e-015
		16.617817655722373 4.7982373409884682e-017 -16.617817655722355
		-2.3616961506118074e-015 6.7857323231109134e-017 -23.501143105765625
		-16.61781765572233 4.7982373409884713e-017 -16.617817655722355
		;
createNode nurbsCurve -n "Cubeman_rigForAnim:rootShape" -p "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		24.119958735156285 4.7982373409884682e-017 -24.119958735156125
		-7.4151412378623011e-015 6.7857323231109134e-017 -21.73381422052617
		-24.119958735156175 4.7982373409884713e-017 -24.119958735156203
		-21.733814220526213 1.9663354616187859e-032 -5.2952364932269778e-015
		-24.119958735156175 -4.7982373409884694e-017 24.119958735156125
		-1.1484395291710075e-014 -6.7857323231109146e-017 21.73381422052617
		24.119958735156185 -4.7982373409884719e-017 24.119958735156125
		21.733814220526213 -3.6446300679047921e-032 1.267595314552588e-014
		24.119958735156285 4.7982373409884682e-017 -24.119958735156125
		-7.4151412378623011e-015 6.7857323231109134e-017 -21.73381422052617
		-24.119958735156175 4.7982373409884713e-017 -24.119958735156203
		;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1.413629\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.413629\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1.413629\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.413629\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1.413629\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.413629\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1.413629\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1.413629\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n"
		+ "                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1.413629\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1.413629\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 32 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "Cubeman_rigForAnim:Cubeman_mat";
	setAttr ".c" -type "float3" 0.11049499 0.30826432 0.53899997 ;
createNode shadingEngine -n "Cubeman_rigForAnim:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Cubeman_rigForAnim:materialInfo1";
createNode nodeGraphEditorInfo -n "Cubeman_rigForAnim:hyperShadePrimaryNodeEditorSavedTabsInfo";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -73.809520876596963 -135.71428032148475 ;
	setAttr ".tgi[0].vh" -type "double2" 72.619044733426037 207.14284891173989 ;
	setAttr ".tgi[0].ni[0].x" -55.714282989501953;
	setAttr ".tgi[0].ni[0].y" 91.428565979003906;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -70;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode skinCluster -n "Cubeman_rigForAnim:skinCluster1";
	setAttr ".skm" 2;
	setAttr -s 20 ".wl";
	setAttr ".wl[0].w[2]"  1;
	setAttr ".wl[1].w[2]"  1;
	setAttr -s 2 ".wl[2].w[1:2]"  0.89997825352542304 0.100021746474577;
	setAttr -s 2 ".wl[3].w[1:2]"  0.89997825352542293 0.10002174647457709;
	setAttr -s 2 ".wl[4].w[1:2]"  0.89997825352542304 0.100021746474577;
	setAttr -s 2 ".wl[5].w[1:2]"  0.89997825352542293 0.10002174647457709;
	setAttr ".wl[6].w[2]"  1;
	setAttr ".wl[7].w[2]"  1;
	setAttr -s 2 ".wl[8].w[1:2]"  0.63585656881332397 0.36414343118667603;
	setAttr -s 2 ".wl[9].w[1:2]"  0.63585656881332397 0.36414343118667603;
	setAttr -s 2 ".wl[10].w[1:2]"  0.63585656881332397 0.36414343118667603;
	setAttr -s 2 ".wl[11].w[1:2]"  0.63585656881332397 0.36414343118667603;
	setAttr -s 2 ".wl[12].w[1:2]"  0.39413183927536011 0.60586816072463989;
	setAttr -s 2 ".wl[13].w[1:2]"  0.39413183927536011 0.60586816072463989;
	setAttr -s 2 ".wl[14].w[1:2]"  0.39413183927536011 0.60586816072463989;
	setAttr -s 2 ".wl[15].w[1:2]"  0.39413183927536011 0.60586816072463989;
	setAttr -s 2 ".wl[16].w[1:2]"  0.19228219985961914 0.80771780014038086;
	setAttr -s 2 ".wl[17].w[1:2]"  0.19228219985961914 0.80771780014038086;
	setAttr -s 2 ".wl[18].w[1:2]"  0.19228219985961914 0.80771780014038086;
	setAttr -s 2 ".wl[19].w[1:2]"  0.19228219985961914 0.80771780014038086;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.2046343010045723e-015 -24.023891858327175 2.6451513466228243e-016 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.2046343010045723e-015 0 2.6451513466228243e-016 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "Cubeman_rigForAnim:tweak1";
createNode objectSet -n "Cubeman_rigForAnim:skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "Cubeman_rigForAnim:skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "Cubeman_rigForAnim:skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "Cubeman_rigForAnim:tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "Cubeman_rigForAnim:groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "Cubeman_rigForAnim:groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "Cubeman_rigForAnim:bindPose1";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2046343010045723e-015
		 24.023891858327175 -2.6451513466228243e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2046343010045723e-015
		 0 -2.6451513466228243e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode animLayer -n "BaseAnimation";
	setAttr ".ovrd" yes;
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode lambert -n "arrow_mat";
	setAttr ".c" -type "float3" 1 0.13315547 0 ;
createNode shadingEngine -n "arrow_matSG";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode animCurveTU -n "root_visibility";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 9 1 16 1 17 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "root_translateX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 9 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "root_translateY";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 9 84.263276227087403 16 0 17 0;
	setAttr -s 5 ".kit[0:4]"  18 2 1 1 18;
	setAttr -s 5 ".kot[0:4]"  18 1 1 2 18;
	setAttr -s 5 ".ktl[1:4]" no yes no yes;
	setAttr -s 5 ".kwl[2:4]" no yes yes;
	setAttr -s 5 ".kix[2:4]"  0.57859820127487183 0.15211538970470428 
		0.041666626930236816;
	setAttr -s 5 ".kiy[2:4]"  0 -110.1097412109375 0;
	setAttr -s 5 ".kox[1:4]"  0.14159902930259705 0.53693151473999023 
		0.041666626930236816 0.041666626930236816;
	setAttr -s 5 ".koy[1:4]"  111.24176788330078 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "root_translateZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 9 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "root_rotateX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 9 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "root_rotateY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 9 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "root_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 9 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "root_scaleX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 9 1 16 1 17 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "root_scaleY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 9 1 16 1 17 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "root_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 9 1 16 1 17 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "head_visibility";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 10 1 16 1 17 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "head_translateX";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "head_translateY";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 19.798139605745192 2 24.611594458853297
		 3 24.577716051875598 10 24 16 24 17 19.798139605745192;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "head_translateZ";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "head_rotateX";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 13.208968141938245 2 3.7368238985481401
		 3 -14.222642387961729 10 -21.882327076883797 16 -22.600146111465943 17 -5.0061816436871327;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "head_rotateY";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0.88835005205432349 3 0.83914116180606413
		 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "head_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 -0.64479410966260431 3 -0.60907665515046017
		 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "head_scaleX";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 0.80604958048970676 10 1 16 1
		 17 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "head_scaleY";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 10 1 16 1 17 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "head_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 0.80604958048970676 10 1 16 1
		 17 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "root_visibility1";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 10 1 16 1 17 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "root_translateX1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "root_translateY1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 -24.688880875436123 10 0 16 0
		 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "root_translateZ1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "root_rotateX1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 7.9893407556666167 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "root_rotateY1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "root_rotateZ1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 3 0 10 0 16 0 17 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "root_scaleX1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.4443740976249717 2 1.3400054369826129
		 3 0.68590328705723713 10 1 16 1 17 1.4443740976249717;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "root_scaleY1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 3 1 10 1 16 1 17 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "root_scaleZ1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1.4443740976249717 2 1.3400054369826129
		 3 0.68590328705723713 10 1 16 1 17 1.4443740976249717;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animLayer -n "AnimLayer1";
	setAttr -s 10 ".dsm";
	setAttr -s 8 ".bnds";
	setAttr ".pref" yes;
	setAttr ".slct" yes;
createNode animBlendNodeBoolean -n "Cubeman_rigForAnim:root_visibility_AnimLayer1";
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Cubeman_rigForAnim:root_translateX_AnimLayer1";
	setAttr ".o" 1.7671886375918984;
createNode animBlendNodeAdditiveDL -n "Cubeman_rigForAnim:root_translateY_AnimLayer1";
	setAttr ".o" -24.660454319758909;
createNode animBlendNodeAdditiveDL -n "Cubeman_rigForAnim:root_translateZ_AnimLayer1";
createNode animBlendNodeAdditiveRotation -n "Cubeman_rigForAnim:root_rotate_AnimLayer1";
	setAttr ".o" -type "double3" 7.9621175675573532 0.2353827962083905 6.9625044819712638 ;
createNode animBlendNodeAdditiveScale -n "Cubeman_rigForAnim:root_scaleX_AnimLayer1";
	setAttr ".o" 0.68590328705723713;
createNode animBlendNodeAdditiveScale -n "Cubeman_rigForAnim:root_scaleY_AnimLayer1";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Cubeman_rigForAnim:root_scaleZ_AnimLayer1";
	setAttr ".o" 0.68590328705723713;
createNode animCurveTL -n "root_translateX_AnimLayer1_inputB";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  2 0 6 -11.309747138823969 7 -6.1412642520460388
		 9 -6.8176395021436242 10 -4.2564626376380517 12 -3.9163143704378696 16 0.55387626554757929
		 17 0 18 0 22 11.31 23 5.0461632790421236 25 6.818 26 4.0036699225987062 28 4.0559739945064672
		 32 0.056931057894438197 33 0;
createNode animCurveTL -n "root_translateY_AnimLayer1_inputB";
	setAttr ".tan" 18;
	setAttr -s 14 ".ktv[0:13]"  2 0 6 1.0221060953918393 7 4.2148190157765821
		 9 0.16267695285574746 12 0.38605745531176971 16 0.73022895799115517 17 0 18 0 22 1.0221060953918393
		 23 3.5007338914634829 25 0.16267695285574746 28 0.25404147661877335 32 0.39481062184106008
		 33 0;
createNode animCurveTL -n "root_translateZ_AnimLayer1_inputB";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  2 0 12 0 16 0 17 0 18 0 22 0 25 0 28 0 32 0
		 33 0;
createNode animCurveTU -n "root_visibility_AnimLayer1_inputB";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  2 1 12 1 16 1 17 1 18 1 22 1 25 1 28 1 32 1
		 33 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "root_rotate_AnimLayer1_inputBX";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  2 0 6 -0.55927984633259609 7 0.037499656093096363
		 9 -0.066917342764799492 10 -0.022225705499158119 12 -0.040579615975769041 16 0 17 0
		 18 0 22 -0.55927984633259609 23 -1.6043811558905381 25 -0.066917342764799492 26 -0.04607682844995728
		 28 -0.012486042736884266 32 0 33 0;
createNode animCurveTA -n "root_rotate_AnimLayer1_inputBY";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  2 0 6 2.1780354403318527 7 0.27461130861922933
		 9 0.23399246334189347 10 0.20380054191238822 12 0.11200664819266944 16 0 17 0 18 0
		 22 2.1780354403318527 23 2.7982767736904601 25 0.23399246334189347 26 0.10168181133311736
		 28 0.043660428415450064 32 0 33 0;
createNode animCurveTA -n "root_rotate_AnimLayer1_inputBZ";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  2 0 6 -44.560405010397496 7 -15.234589255370469
		 9 -31.918982395424198 10 -17.952661810963047 12 -17.785733392980454 16 3.9899430578800317
		 17 0 18 0 22 44.56 23 13.267412989781839 25 31.919 26 20.950909360420678 28 17.640992584270975
		 32 -2.0125723767766881 33 0;
createNode animCurveTU -n "root_scaleX_AnimLayer1_inputB";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  2 1 12 1 16 1 17 1 18 1 22 1 25 1 28 1.1748993499288496
		 32 1.4443740976249717 33 1;
createNode animCurveTU -n "root_scaleY_AnimLayer1_inputB";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  2 1 12 1 16 1 17 1 18 1 22 1 25 1 28 1 32 1
		 33 1;
createNode animCurveTU -n "root_scaleZ_AnimLayer1_inputB";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  2 1 12 1 16 1 17 1 18 1 22 1 25 1 28 1.1748993499288496
		 32 1.4443740976249717 33 1;
select -ne :time1;
	setAttr ".o" 19;
	setAttr ".unw" 19;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "Cubeman_rigForAnim:skinCluster1GroupId.id" "Cubeman_rigForAnim:CubemanShape.iog.og[2].gid"
		;
connectAttr "Cubeman_rigForAnim:skinCluster1Set.mwc" "Cubeman_rigForAnim:CubemanShape.iog.og[2].gco"
		;
connectAttr "Cubeman_rigForAnim:groupId2.id" "Cubeman_rigForAnim:CubemanShape.iog.og[3].gid"
		;
connectAttr "Cubeman_rigForAnim:tweakSet1.mwc" "Cubeman_rigForAnim:CubemanShape.iog.og[3].gco"
		;
connectAttr "Cubeman_rigForAnim:skinCluster1.og[0]" "Cubeman_rigForAnim:CubemanShape.i"
		;
connectAttr "Cubeman_rigForAnim:tweak1.vl[0].vt[0]" "Cubeman_rigForAnim:CubemanShape.twl"
		;
connectAttr "root_scaleX.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.sx"
		;
connectAttr "root_scaleY.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.sy"
		;
connectAttr "root_scaleZ.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.sz"
		;
connectAttr "root_visibility.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.v"
		;
connectAttr "root_translateX.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.tx"
		;
connectAttr "root_translateY.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.ty"
		;
connectAttr "root_translateZ.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.tz"
		;
connectAttr "root_rotateX.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.rx"
		;
connectAttr "root_rotateY.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.ry"
		;
connectAttr "root_rotateZ.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.rz"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.s" "Cubeman_rigForAnim:head.is"
		;
connectAttr "head_scaleX.o" "Cubeman_rigForAnim:head.sx";
connectAttr "head_scaleY.o" "Cubeman_rigForAnim:head.sy";
connectAttr "head_scaleZ.o" "Cubeman_rigForAnim:head.sz";
connectAttr "head_visibility.o" "Cubeman_rigForAnim:head.v";
connectAttr "head_translateX.o" "Cubeman_rigForAnim:head.tx";
connectAttr "head_translateY.o" "Cubeman_rigForAnim:head.ty";
connectAttr "head_translateZ.o" "Cubeman_rigForAnim:head.tz";
connectAttr "head_rotateX.o" "Cubeman_rigForAnim:head.rx";
connectAttr "head_rotateY.o" "Cubeman_rigForAnim:head.ry";
connectAttr "head_rotateZ.o" "Cubeman_rigForAnim:head.rz";
connectAttr "layer1.di" "Cubeman_rigForAnim:head.do";
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.s" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.is"
		;
connectAttr "Cubeman_rigForAnim:root_scaleX_AnimLayer1.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.sx"
		;
connectAttr "Cubeman_rigForAnim:root_scaleY_AnimLayer1.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.sy"
		;
connectAttr "Cubeman_rigForAnim:root_scaleZ_AnimLayer1.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.sz"
		;
connectAttr "Cubeman_rigForAnim:root_visibility_AnimLayer1.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.v"
		;
connectAttr "Cubeman_rigForAnim:root_translateX_AnimLayer1.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.tx"
		;
connectAttr "Cubeman_rigForAnim:root_translateY_AnimLayer1.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.ty"
		;
connectAttr "Cubeman_rigForAnim:root_translateZ_AnimLayer1.o" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.tz"
		;
connectAttr "Cubeman_rigForAnim:root_rotate_AnimLayer1.ox" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.rx"
		;
connectAttr "Cubeman_rigForAnim:root_rotate_AnimLayer1.oy" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.ry"
		;
connectAttr "Cubeman_rigForAnim:root_rotate_AnimLayer1.oz" "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.rz"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Cubeman_rigForAnim:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "arrow_matSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Cubeman_rigForAnim:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "arrow_matSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Cubeman_rigForAnim:Cubeman_mat.oc" "Cubeman_rigForAnim:lambert2SG.ss"
		;
connectAttr "Cubeman_rigForAnim:CubemanShape.iog" "Cubeman_rigForAnim:lambert2SG.dsm"
		 -na;
connectAttr "Cubeman_rigForAnim:lambert2SG.msg" "Cubeman_rigForAnim:materialInfo1.sg"
		;
connectAttr "Cubeman_rigForAnim:Cubeman_mat.msg" "Cubeman_rigForAnim:materialInfo1.m"
		;
connectAttr "Cubeman_rigForAnim:Cubeman_mat.msg" "Cubeman_rigForAnim:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Cubeman_rigForAnim:lambert2SG.msg" "Cubeman_rigForAnim:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Cubeman_rigForAnim:skinCluster1GroupParts.og" "Cubeman_rigForAnim:skinCluster1.ip[0].ig"
		;
connectAttr "Cubeman_rigForAnim:skinCluster1GroupId.id" "Cubeman_rigForAnim:skinCluster1.ip[0].gi"
		;
connectAttr "Cubeman_rigForAnim:bindPose1.msg" "Cubeman_rigForAnim:skinCluster1.bp"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.wm" "Cubeman_rigForAnim:skinCluster1.ma[0]"
		;
connectAttr "Cubeman_rigForAnim:head.wm" "Cubeman_rigForAnim:skinCluster1.ma[1]"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.wm" "Cubeman_rigForAnim:skinCluster1.ma[2]"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.liw" "Cubeman_rigForAnim:skinCluster1.lw[0]"
		;
connectAttr "Cubeman_rigForAnim:head.liw" "Cubeman_rigForAnim:skinCluster1.lw[1]"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.liw" "Cubeman_rigForAnim:skinCluster1.lw[2]"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.obcc" "Cubeman_rigForAnim:skinCluster1.ifcl[0]"
		;
connectAttr "Cubeman_rigForAnim:head.obcc" "Cubeman_rigForAnim:skinCluster1.ifcl[1]"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.obcc" "Cubeman_rigForAnim:skinCluster1.ifcl[2]"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.msg" "Cubeman_rigForAnim:skinCluster1.ptt"
		;
connectAttr "Cubeman_rigForAnim:groupParts2.og" "Cubeman_rigForAnim:tweak1.ip[0].ig"
		;
connectAttr "Cubeman_rigForAnim:groupId2.id" "Cubeman_rigForAnim:tweak1.ip[0].gi"
		;
connectAttr "Cubeman_rigForAnim:skinCluster1GroupId.msg" "Cubeman_rigForAnim:skinCluster1Set.gn"
		 -na;
connectAttr "Cubeman_rigForAnim:CubemanShape.iog.og[2]" "Cubeman_rigForAnim:skinCluster1Set.dsm"
		 -na;
connectAttr "Cubeman_rigForAnim:skinCluster1.msg" "Cubeman_rigForAnim:skinCluster1Set.ub[0]"
		;
connectAttr "Cubeman_rigForAnim:tweak1.og[0]" "Cubeman_rigForAnim:skinCluster1GroupParts.ig"
		;
connectAttr "Cubeman_rigForAnim:skinCluster1GroupId.id" "Cubeman_rigForAnim:skinCluster1GroupParts.gi"
		;
connectAttr "Cubeman_rigForAnim:groupId2.msg" "Cubeman_rigForAnim:tweakSet1.gn" 
		-na;
connectAttr "Cubeman_rigForAnim:CubemanShape.iog.og[3]" "Cubeman_rigForAnim:tweakSet1.dsm"
		 -na;
connectAttr "Cubeman_rigForAnim:tweak1.msg" "Cubeman_rigForAnim:tweakSet1.ub[0]"
		;
connectAttr "Cubeman_rigForAnim:CubemanShapeOrig.w" "Cubeman_rigForAnim:groupParts2.ig"
		;
connectAttr "Cubeman_rigForAnim:groupId2.id" "Cubeman_rigForAnim:groupParts2.gi"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.msg" "Cubeman_rigForAnim:bindPose1.m[0]"
		;
connectAttr "Cubeman_rigForAnim:head.msg" "Cubeman_rigForAnim:bindPose1.m[1]";
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.msg" "Cubeman_rigForAnim:bindPose1.m[2]"
		;
connectAttr "Cubeman_rigForAnim:bindPose1.w" "Cubeman_rigForAnim:bindPose1.p[0]"
		;
connectAttr "Cubeman_rigForAnim:bindPose1.m[0]" "Cubeman_rigForAnim:bindPose1.p[1]"
		;
connectAttr "Cubeman_rigForAnim:bindPose1.m[0]" "Cubeman_rigForAnim:bindPose1.p[2]"
		;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root.bps" "Cubeman_rigForAnim:bindPose1.wm[0]"
		;
connectAttr "Cubeman_rigForAnim:head.bps" "Cubeman_rigForAnim:bindPose1.wm[1]";
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.bps" "Cubeman_rigForAnim:bindPose1.wm[2]"
		;
connectAttr "AnimLayer1.sl" "BaseAnimation.chsl[0]";
connectAttr "AnimLayer1.play" "BaseAnimation.cdly[0]";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "arrow_mat.oc" "arrow_matSG.ss";
connectAttr "arrow_matSG.msg" "materialInfo1.sg";
connectAttr "arrow_mat.msg" "materialInfo1.m";
connectAttr "BaseAnimation.csol" "AnimLayer1.sslo";
connectAttr "BaseAnimation.fgwt" "AnimLayer1.pwth";
connectAttr "BaseAnimation.omte" "AnimLayer1.pmte";
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.v" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.tx" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.ty" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.tz" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.rx" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.ry" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.rz" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.sx" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.sy" "AnimLayer1.dsm"
		 -na;
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.sz" "AnimLayer1.dsm"
		 -na;
connectAttr "Cubeman_rigForAnim:root_visibility_AnimLayer1.msg" "AnimLayer1.bnds[0]"
		;
connectAttr "Cubeman_rigForAnim:root_translateX_AnimLayer1.msg" "AnimLayer1.bnds[1]"
		;
connectAttr "Cubeman_rigForAnim:root_translateY_AnimLayer1.msg" "AnimLayer1.bnds[2]"
		;
connectAttr "Cubeman_rigForAnim:root_translateZ_AnimLayer1.msg" "AnimLayer1.bnds[3]"
		;
connectAttr "Cubeman_rigForAnim:root_rotate_AnimLayer1.msg" "AnimLayer1.bnds[7]"
		;
connectAttr "Cubeman_rigForAnim:root_scaleX_AnimLayer1.msg" "AnimLayer1.bnds[8]"
		;
connectAttr "Cubeman_rigForAnim:root_scaleY_AnimLayer1.msg" "AnimLayer1.bnds[9]"
		;
connectAttr "Cubeman_rigForAnim:root_scaleZ_AnimLayer1.msg" "AnimLayer1.bnds[10]"
		;
connectAttr "AnimLayer1.bgwt" "Cubeman_rigForAnim:root_visibility_AnimLayer1.wa"
		;
connectAttr "AnimLayer1.fgwt" "Cubeman_rigForAnim:root_visibility_AnimLayer1.wb"
		;
connectAttr "root_visibility1.o" "Cubeman_rigForAnim:root_visibility_AnimLayer1.ia"
		;
connectAttr "root_visibility_AnimLayer1_inputB.o" "Cubeman_rigForAnim:root_visibility_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.bgwt" "Cubeman_rigForAnim:root_translateX_AnimLayer1.wa"
		;
connectAttr "AnimLayer1.fgwt" "Cubeman_rigForAnim:root_translateX_AnimLayer1.wb"
		;
connectAttr "root_translateX1.o" "Cubeman_rigForAnim:root_translateX_AnimLayer1.ia"
		;
connectAttr "root_translateX_AnimLayer1_inputB.o" "Cubeman_rigForAnim:root_translateX_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.bgwt" "Cubeman_rigForAnim:root_translateY_AnimLayer1.wa"
		;
connectAttr "AnimLayer1.fgwt" "Cubeman_rigForAnim:root_translateY_AnimLayer1.wb"
		;
connectAttr "root_translateY1.o" "Cubeman_rigForAnim:root_translateY_AnimLayer1.ia"
		;
connectAttr "root_translateY_AnimLayer1_inputB.o" "Cubeman_rigForAnim:root_translateY_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.bgwt" "Cubeman_rigForAnim:root_translateZ_AnimLayer1.wa"
		;
connectAttr "AnimLayer1.fgwt" "Cubeman_rigForAnim:root_translateZ_AnimLayer1.wb"
		;
connectAttr "root_translateZ1.o" "Cubeman_rigForAnim:root_translateZ_AnimLayer1.ia"
		;
connectAttr "root_translateZ_AnimLayer1_inputB.o" "Cubeman_rigForAnim:root_translateZ_AnimLayer1.ib"
		;
connectAttr "root_rotateX1.o" "Cubeman_rigForAnim:root_rotate_AnimLayer1.iax";
connectAttr "root_rotateY1.o" "Cubeman_rigForAnim:root_rotate_AnimLayer1.iay";
connectAttr "root_rotateZ1.o" "Cubeman_rigForAnim:root_rotate_AnimLayer1.iaz";
connectAttr "|Cubeman_rigForAnim:CubemanGrp|Cubeman_rigForAnim:root|Cubeman_rigForAnim:root.ro" "Cubeman_rigForAnim:root_rotate_AnimLayer1.ro"
		;
connectAttr "AnimLayer1.oram" "Cubeman_rigForAnim:root_rotate_AnimLayer1.acm";
connectAttr "AnimLayer1.bgwt" "Cubeman_rigForAnim:root_rotate_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "Cubeman_rigForAnim:root_rotate_AnimLayer1.wb";
connectAttr "root_rotate_AnimLayer1_inputBX.o" "Cubeman_rigForAnim:root_rotate_AnimLayer1.ibx"
		;
connectAttr "root_rotate_AnimLayer1_inputBY.o" "Cubeman_rigForAnim:root_rotate_AnimLayer1.iby"
		;
connectAttr "root_rotate_AnimLayer1_inputBZ.o" "Cubeman_rigForAnim:root_rotate_AnimLayer1.ibz"
		;
connectAttr "AnimLayer1.sam" "Cubeman_rigForAnim:root_scaleX_AnimLayer1.acm";
connectAttr "AnimLayer1.bgwt" "Cubeman_rigForAnim:root_scaleX_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "Cubeman_rigForAnim:root_scaleX_AnimLayer1.wb";
connectAttr "root_scaleX1.o" "Cubeman_rigForAnim:root_scaleX_AnimLayer1.ia";
connectAttr "root_scaleX_AnimLayer1_inputB.o" "Cubeman_rigForAnim:root_scaleX_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.sam" "Cubeman_rigForAnim:root_scaleY_AnimLayer1.acm";
connectAttr "AnimLayer1.bgwt" "Cubeman_rigForAnim:root_scaleY_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "Cubeman_rigForAnim:root_scaleY_AnimLayer1.wb";
connectAttr "root_scaleY1.o" "Cubeman_rigForAnim:root_scaleY_AnimLayer1.ia";
connectAttr "root_scaleY_AnimLayer1_inputB.o" "Cubeman_rigForAnim:root_scaleY_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.sam" "Cubeman_rigForAnim:root_scaleZ_AnimLayer1.acm";
connectAttr "AnimLayer1.bgwt" "Cubeman_rigForAnim:root_scaleZ_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "Cubeman_rigForAnim:root_scaleZ_AnimLayer1.wb";
connectAttr "root_scaleZ1.o" "Cubeman_rigForAnim:root_scaleZ_AnimLayer1.ia";
connectAttr "root_scaleZ_AnimLayer1_inputB.o" "Cubeman_rigForAnim:root_scaleZ_AnimLayer1.ib"
		;
connectAttr "Cubeman_rigForAnim:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "arrow_matSG.pa" ":renderPartition.st" -na;
connectAttr "Cubeman_rigForAnim:Cubeman_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "arrow_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of WinnerCubeman.ma
