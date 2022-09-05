# Injewelme Project
Flutter로 제작한 injewelme 제출용 프로젝트입니다.

## 라이브러리

### **d_chart**

pub dev 링크 
(https://pub.dev/packages/d_chart)

Install Terminal

```flutter pub add d_chart```

### **provider**

pub dev 링크 
(https://pub.dev/packages/provider)

Install Terminal

```flutter pub add provider```

## 소스 코드

Dir|File|Description
---|---|---|
lib|main.dart|Flutter main 앱이 위치합니다. 스캐폴드 하위 위젯으로 meal_list, graph_bar, graph_pie가 있습니다.좌상단의 새로고침 버튼으로 애니메이션을 다시 재생할 수 있습니다.|
lib|meal_list.dart|Column위젯으로 meal_info위젯 3개를 조식,중식,석식을 표현합니다.|
lib|meal_info.dart|Row위젯으로 meal_time, meal_ingredient을 하위 위젯으로 갖습니다. MealData를 Provider로 제공 받아 하위 위젯들에게 위젯 멤버로 제공합니다.|
lib|meal_time.dart|식사 시간(ex:조식)정보와 칼로리 정보를 표시합니다.|
lib|meal_ingredient.dart|음식 이름, 재료, 종류, 열량 정보를 표시합니다.|
lib|graph_bar.dart|stateful widget인 barGraph 위젯이 위치하며 애니메이션 컨트롤러를 이용해 container widget의 width를 조절하여 애니메이션을 표현합니다. NutrientBarData를 main에서 Map형태로 받아 영양소 성분을 표시합니다. key : 영양소 이름, value : 영양소 값|
lib|graph_pie.dart|d_chart의 pieChart 위젯을 구현했습니다. NutrientPieData를 Provider로 제공받아 위젯 안에 표시합니다.|
lib|data.dart|각 위젯에 사용될 데이터를 정의합니다. List<Map<String,dynamic>> 타입입니다. MealData : 식단표 정보 , NutrientBarData : barGraph에 사용될 영양소 정보,  NutrientPieData : pieGraph에 사용될 영양소 정보|
lib\provider|provider.dart|Provider를 사용하기 위해 ChangeNotifier 기능을 가진 클래스를 선언합니다.|



