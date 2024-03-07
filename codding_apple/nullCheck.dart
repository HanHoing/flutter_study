//타입 지정 -> null 체크 용이
int total = 3;
String person = 'john';
List<String> name = ['한', '혜', '영'];
List<int> like = [0,0,0];

//(문자.displayName ??  ): null check
String nameEx = name[0] ?? "이름 존재하지 않음";
print (nameEx);