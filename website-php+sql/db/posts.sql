-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-11-01 10:24
-- 서버 버전: 10.4.20-MariaDB
-- PHP 버전: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `my_db`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user` varchar(40) NOT NULL,
  `topic` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `posts`
--

INSERT INTO `posts` (`id`, `user`, `topic`, `title`, `content`) VALUES
(1, 'one', 'health', '허리 스트레칭', '허리 통증은 나이와 성별을 가리지 않고 많은 사람들이 겪는 문제이지만 \r\n특히, 직장인에게는 매우 흔한 질병입니다.\r\n\r\n장시간 앉아서 근무하거나 공부하는 현대인들은 잘못된 자세를 오랫동안 \r\n유지하면 허리 근육과 척추에 무리가 가해져 허리에 통증이 발생합니다.  \r\n\r\n최근에는 스마트폰이나 태블릿 PC, 컴퓨터 등의 사용이 늘면서 \r\n허리통증을 호소하는 사람이 많아지고 있어 각별한 주의가 필요한데,\r\n\r\n허리 통증 예방에 도움 되는 스트레칭을 소개합니다.\r\n\r\n위 사진같은 스트레칭을 아침 저녁으로 해주는 것 만으로 \r\n허리디스크를 예방할 수 있습니다.'),
(2, 'two', 'health', '걷기 운동의 효과', '걷기는 대표적인 건강 운동법이다. 하지만 단순히 걷기만 하기보다 \r\n전후 관리까지 포함된 3단계 훈련법을 시도하는 것이 좋다.\r\n\r\n▷1단계=근력 운동으로 준비하기\r\n걷기 운동을 본격적으로 시작하기 전에 근력 운동을 먼저 한다. \r\n근육이 충분하지 않은 상태에서 걸으면 심폐 기능만 좋아지지만, \r\n근력을 기른 후 걸으면 전신 기능까지 올라간다. \r\n근력 강화 운동으로는 스쿼트, 플랭크를 권한다. \r\n\r\n▷​2단계=인터벌 걷기로 운동하기\r\n근력 운동을 2주 정도 한 뒤부터는 ‘인터벌 걷기 운동’을 시작한다. \r\n인터벌 걷기는 걷기 강도에 변화를 주는 운동법이다. \r\n걷기 강도를 달리하면 근육의 수축·이완이 빠르게 이뤄져 \r\n몸 곳곳 혈액이 잘 공급된다. \r\n\r\n▷​3단계=걷기 후 기구·탄력 밴드 운동으로 효과 높이기\r\n인터벌 걷기 운동 6~8주 차부터는 기구를 이용한 근력 운동을 병행한다. \r\n근육량이 늘고, 근육 기능이 향상돼 걷는 속도를 더 높일 수 있다. '),
(3, 'two', 'mind', '불안한 청년들을 위해', '청년들이 우울하고 불안해하는 이유는 무엇인가요?\r\n-많은 청년들이 취업 스트레스뿐만 아니라 이성 관계 문제, 가족 간의 갈등,\r\n경제적 어려움 등 다양한 원인으로 우울하고 불안해하고 있는데요.\r\n과거보다 미래의 불확실성이 높아지고 SNS의 발달로 다른 사람과 비교하거나\r\n비교 당하는 경우가 많아져 청년들의 불안은 더욱 커지고 있습니다.\r\n\r\n정신건강 어떻게 관리하면 되나요?\r\n1) 건강상태 스스로 점검하기\r\n2) 스트레스 안정화 요법\r\n3) 전문가의 도움 받기 \r\n\r\n자세히\r\n-국립정신건강센터 한울e야기 SPRING(2017 vol.13)\r\n'),
(4, 'admin', 'mind', 'AI를 통해 정신 건강 회복', '정신질환은 가벼운 스트레스부터 우울증과 치매 등 질병으로 나타난다. \r\n질환의 원인과 과정은 다양하겠으나 경제적 어려움, 양극화, 단절감과 \r\n소외감 등에 따라 정신적 피로와 정서적 불균형 속에서 \r\n많은 정신질환을 경험할 수 있다.\r\n\r\n이에 인공지능(AI)이 다양한 정보통신기술(ICT)을 바탕으로 \r\n인간과 상호작용을 구현해 정신건강 회복을 가능하게 할 것이라는 전망이 \r\n나왔다. AI가 환자 상태를 실시간 분석하고 그 결과를 제공해 \r\n정신건강을 위한 진료ㆍ치료ㆍ예방ㆍ돌봄 서비스를 실현할 것이란 설명이다.'),
(5, 'admin', 'mind', '수면과 정신건강', '인간은 충분한 수면을 이루지 못하면 정상적인 삶의 유지가 어렵다. \r\n때문에 반드시 적절한 수면 시간을 지켜야 하는데, \r\n메디컬뉴스투데이(medicalnewstoday)가 전한 소식에 의하면 충분한 수면을\r\n 취하지 않으면 감정 조절 능력이 왜곡되고 더 나아가 \r\n정신 건강 에 치명적인 영향을 줄 수 있는 것으로 밝혀졌다.\r\n\r\n그렇다면 수면 부족을 유발하는 불면증은 어떻게 개선해야 할까? \r\n우선 침대에서 보내는 시간을 줄여 필요한 수면량을 조절하고, \r\n졸릴 떄에만 잠자리에 드는 것, 침대에 있는 동안 근육을 긴장시키고 \r\n이완시키거나 호흡에 집중하는 것 등이 있다.\r\n\r\n덧붙여 마음가짐을 편안하게 하고 긍정적인 정신적 이미지를 생성하는 등의 인지 기법도 필요하다.\r\n\r\n출처 : 헬스인뉴스(http://www.healthinnews.co.kr)'),
(6, 'admin', 'mind', '코로나 19와 정신건강', '신종 코로나바이러스감염증(코로나19)가 세계를 불확실성에 던져넣었다. \r\n시도 때도 없이 쏟아지는 코로나19 뉴스가 가혹하게 느껴질 수도 있다. \r\n이 모든 것이 사람들 정신건강에 영향을 미치고 있다. \r\n이미 불안증이나 강박증을 갖고 있는 사람들에겐 더욱 그렇다. \r\n전염병의 시대에 우린 어떻게 스스로 정신건강을 지킬 수 있을까?\r\n\r\n뉴스 사이트나 SNS를 오랫동안 멀리하는 것이 닉의 불안증을 완화하는 데 도움이 됐다. \r\n그는 또한 앤자이어티UK와 같은 정신건강 관련 재단의 전화 상담을 \r\n받는 게 도움이 됐다고 한다.'),
(7, 'one', 'health', '운동과 오해', '근력운동과 유산소운동, 뭐가 더 중요할까?\r\n\r\n운동에 대한 정보를 많이 알고 있는 사람이라면, \r\n근력운동과 유산소운동이 모두 중요하다는 사실을 알 것이다. \r\n유산소운동은 건강한 심장을 비롯해 혈압과 혈당 조절을 돕는다. \r\n이런 이점은 근력운동과 결합할 때 시너지 효과를 낸다. \r\n\r\n근력운동은 근육과 뼈를 강화해, 부상의 위험을 줄이고 자세를 바르게 한다. \r\n이렇게 만들어진 근육은 신진대사 증진에 기여해\r\n다시 유산소운동을 돕는다. \r\n일주일에 150분 정도 적당한 강도의 유산소운동을 하고, \r\n일주일에 두 번 이상 근육 운동을 하는 것이 좋다.\r\n\r\n \r\n\r\n운동은 매일 해야 할까?\r\n\r\n튼튼한 근육을 만들기 위해서는 회복이 필수적이다. \r\n근력운동 후에는 근육 섬유의 파괴로 인해 근육이 고갈된 상태다. \r\n그렇기 때문에 매일 운동을 하기보다는 일주일에 하루 이틀 정도 쉬면서 \r\n근섬유가 회복되도록 해야 한다. \r\n전문가들은 이 과정이 반복될수록 근육은 더 많이 붙게 된다'),
(8, 'one', 'free', '하루일기', '다들 오늘 하루는 어떻게 보내셨나요?\r\n저는 오랜만에 방청소도 하고 빨래도 널고 바쁘게 보냈네요\r\n다하고 나니 상쾌해진 것 같아요\r\n\r\n요즘 날도 추워서 다들 창문 닫고 지내실텐데 \r\n환기도 하고 상쾌한 하루되세요!'),
(9, 'one', 'health', '근력운동 추천', '근력 운동이란 근육에 일정한 과부하(무게)를 주는 운동이다. \r\n점차 무게를 늘려 가면 근육의 힘인 근력이 강화된다. \r\n근육이 힘을 내는데 산소의 소비가 필요하지 않기 때문에 \r\n무산소 운동에 포함된다.\r\n\r\n1. 스쿼트\r\n운동을 막 시작한 사람이라면 우선 스쿼트 자세를 생활화하는 것이 좋다.\r\n\r\n2. 런지\r\n런지는 몸의 전체적인 균형과 중심을 잡아주는 운동인 만큼 빼놓지 않고 \r\n해야 한다.\r\n\r\n3. 플랭크\r\n플랭크는 코어 근육을 집중적으로 강화하는 대표적인 운동이다.\r\n\r\n4. 상체 운동\r\n어깨와 상박(팔 윗부분)을 단련시키는 벤치 딥스, \r\n머리 위로 팔을 쭉 뻗어 올리며 덤벨을 드는 오버헤드 프레스 등으로 \r\n상체를 단련하는 근력 운동도 병행해야 한다.'),
(10, 'three', 'health', '5분 모닝 스트레칭', '하루 중 가장 바쁜 시간은 아침 시간이라고 할 수 있습니다. \r\n1분이 마치 10분처럼 빠르게 지나가죠. 그렇기 때문에 아침 시간에 \r\n스트레칭을 한다는 것은 쉬운 일이 아닌데요.\r\n하루를 상쾌하게 시작하고, 건강을 위해서 5분 모닝 스트레칭에 \r\n투자하는 것이 좋습니다.\r\n\r\n1.대퇴사두근 스트레칭\r\n2.종아리 스트레칭\r\n3.햄스트링 스트레칭\r\n4.측면 스트레칭\r\n5.어깨 스트레칭'),
(11, 'three', 'free', '긍정적 마인드', '긍정적인 생각이 ‘건강한 삶’에 유리한 이유는 무엇일까\r\n\r\n그 첫 번째로 낙관적인 사람들은 문제 해결력이나 대처 능력, \r\n목표 실현 능력이 더 능숙하다고 설명했다.\r\n다음으로 낙관적인 사람들은 그렇지 않은 사람들보다 생물학적인 이점이 \r\n더 크다고 설명했다. \r\n실제로 비관적인 생각은 생물학적으로 ‘우울증’과 같은 심리적 문제와 \r\n관련성이 높은 것으로 나타나고 있으며, \r\n이는 비관론이 건강을 해칠 수 있음을 시사한다고 연구팀은 지적했다.\r\n\r\n마지막으로 낙관적인 심리는 신진대사 개선과 염증 감소 등의 메커니즘에 \r\n긍정적인 영향을 줄 수 있다고 설명했다.\r\n\r\n[출처] : https://www.hidoc.co.kr/healthstory/news/C0000479857 | 하이닥'),
(12, 'three', 'mind', '우울증 극복', '6명중 1명꼴 앓는 마음의 감기 ‘우울증’ \r\n치료땐 90% 완치… 자신감 가져야\r\n\r\n우울증은 누구나 한 번쯤 겪을 수 있는 정신과 질환으로 \r\n‘마음의 감기’로 불린다. 고대 이집트 유물에도 관련 기록이 \r\n있을 정도로 오래된 질환이기도 하다.\r\n\r\n이를 극복, 예방하기 위한 방법이 있다.\r\n1)우울증 예방과 치료, 생활태도 개선부터\r\n2)우울증은 신속하게 치료받아야\r\n\r\n우울증은 하루아침에 치료되지 않는다. 시간을 갖고 꾸준히 치료를 받으면 \r\n어느새 전과 달라진 자신을 발견하게 될 것이다.'),
(13, 'admin', 'health', '앉아서 할 수 있는 스트레칭', '하루 종일 같은 자리에 앉아서 같은 자세로 일을 하다 보면 \r\n몸이 찌뿌둥해지는 것을 느낄 수 있다. \r\n오래 앉아있는 것은 하체의 혈액순환을 방해해 \r\n하지정맥류, 하체 부종, 혈전증 등의 원인이 된다. \r\n또한 자세가 바르지 않다면 다양한 척추질환이 나타날 수도 있다. \r\n일이 바빠 일어날 시간이 없을 때 틈틈이 할 수 있는 스트레칭으로는 \r\n어떤 것이 있을까?\r\n\r\n1. 상체 회전 스트레칭\r\n2. 등, 가슴 스트레칭\r\n3. 옆구리 스트레칭\r\n4. 엉덩이 스트레칭\r\n5. 허벅지 뒤쪽 스트레칭\r\n6. 종아리 스트레칭\r\n\r\n\r\n[출처] : https://www.hidoc.co.kr/healthstory/news/C0000611022 | 하이닥'),
(14, 'admin', 'health', '줄넘기 운동', '거의 매일 밤 달리기를 하고 있는 기자의 경우도 마찬가지. \r\n몸이 찌뿌둥하기만 하다. 그래서 필요한 게 줄넘기다. \r\n그동안 웨이트 도중 맨손 줄넘기를 많이 했지만, \r\n진짜 줄넘기를 하지 않았기 때문에 궁금했다. 해보니 힘들다. \r\n역시 익숙해지는데는 시간이 필요하다. 무슨 운동이든. \r\n제대로 줄넘기 하는 방법을 알아 봤다.\r\n\r\n줄넘기할 때 주의할 점 3가지\r\n1. 장소 선택의 지혜\r\n\r\n2. 온몸의 힘 빼고 발 앞끝 착지\r\n\r\n3. 아랫배만 힘을 주고, 종아리에 주목 \r\n\r\n출처 : 캔서앤서(cancer answer)(http://www.canceranswer.co.kr)'),
(15, 'admin', 'mind', '적절한 휴식', 'Q. 10월 10일은 정신건강의 날이었습니다. \r\n평소 직장인들이 마음을 건강하게 유지하려면 어떻게 해야 하나요?\r\n\r\nA. 정신건강을 잘 챙기는 가장 효율적인 방법은 ‘뇌 휴식’입니다.\r\n 뇌 휴식 방법은 크게 세 가지가 있습니다.\r\n\r\n첫 번째는 뇌의 스위치를 꺼놓는 것입니다. 잠을 자는 상태입니다.\r\n \r\n두 번째 뇌 휴식 방법은, 스위치를 꺼놓는 것이 아니라 \r\n다른 방향으로 더 활성화하는 것입니다. 일명 ‘뇌 레크리에이션’입니다. \r\n\r\n마지막의 뇌 휴식 방법은 ‘멍 때리기’입니다. \r\n수면과 뇌 레크리에이션은 아무 때나 하기 어렵습니다. \r\n반면 짧지만 자주 할 수 있는 멍 때리기는 뇌 휴식에 도움을 줍니다.'),
(16, 'admin', 'health', '초보 맨몸 운동', '헬스장에 가서 무리하게 근력 운동을 하면 근력이 붙기도 전에 \r\n손상될 수 있다. 본격적인 근력 운동에 돌입하기에 앞서 \r\n잠자던 근육을 깨워 주는 워밍업을 해보자. 어디 갈 필요 없다. \r\n집에서 안전하고 간단하게 할 수 있다. \r\n생수병이나 베개 등을 이용하기 때문에 특별한 운동기구도 필요 없다\r\n\r\n#1 초간단! 맨몸 근력 운동 전 알아두자\r\n\r\n-버티는 동작 3개월이면 속근육 키운다\r\n-운동하는 시간은 따로 있다.\r\n-운동 30분 전 블랙커피 마시면 근력 향상 효과\r\n\r\n#2 스트레칭부터 시작하자\r\n-허리 스트레칭\r\n-어깨 스트레칭\r\n\r\n#3 맨몸으로 운동하기\r\n-브릿지\r\n-생수병운동'),
(17, 'two', 'health', '자기전 운동', '자기 전 운동을 하는 것은 정신을 깨워 잠이 오지 않을 수도 \r\n있습니다. 하지만 적절한 운동은 편안한 잠과 상쾌한 기상을 가져다줍니다.\r\n\r\n아침형인간이 아니라 아침운동이 어려운 분들은 적절한 자기전 운동을\r\n하시길 바랍니다.\r\n\r\n자기 전 하루 15분 운동 몇가지를 소개합니다.\r\n\r\n무리한 자세, 무리한 동작보단 스트레칭같은 동작을 \r\n섞어주면 좋습니다. \r\n\r\n-백런지, 타바타'),
(18, 'two', 'mind', '하루에 하나씩', '[아주 작은 습관의 힘] : 1만 시간의 법칙보다 더 강력한 100번 반복의 힘\r\n\r\n습관 형성에서 가장 중요한 것은 “첫 시작”이다. \r\n처음 시작이 너무 거창하다면 뇌는 더욱 실행하기를 거부할 것이다.\r\n즉, 우리는 실행의도를 쉽게 만들어야 한다. \r\n“매일 밤 잠이 들기 전에 50페이지의 책을 읽어야지”가 아니라 \r\n“한 페이지를 읽고 자야지”와 같이 좀 더 사소한 실행의도를 만들어라.\r\n 그러면 우리의 뇌는 이러한 행위들을 \r\n더 이상 어렵다고 받아들이지 않을 것이다.\r\n그리고 습관 실행을 더욱 효과적으로 할 수 있도록 도와줄 것이다.\r\n\r\n우리는 어떤 습관을 길러야 할까?\r\n모든 사람들이 일찍 자기, 매일 달리기 하기, \r\n매일 차 마시기과 같은 동일한 습관을 형성해야 할까? \r\n저자는 이 질문에 대해 심플하게 “아니오”라고 대답한다. \r\n습관에도 적성이 있다는 것이다.\r\n\r\n무엇을 하면 재미 있을까?”, “무엇이 시간 가는 것을 잊게 하는가?” \r\n등의 질문을 마련해 두었'),
(19, 'four', 'mind', '스트레스 자가진단', '1. 숨이 막힌다.	\r\n2. 불면증이 있다.	\r\n3. 편두통이 있다.	\r\n4. 눈이 쉽게 피로해진다.	\r\n5. 목이나 어깨가 자주 결린다.	\r\n6. 가슴이 답답해 토할 기분이다.'),
(20, 'four', 'free', '아침 운동 도전!', '매일 아침 운동 도전해보기로 했습니다!\r\n다들 함께해요^^'),
(21, 'four', 'free', '[질문] 꾸준히 운동하는법?', '최근에서야 운동의 중요성을 깨달았습니다.\r\n이것저것 알아보고 헬스도 신청했는데,\r\n막상 하게되니 몸이 너무 힘들고 하기 싫어지는데\r\n어떡하면 좋을까요?\r\n\r\n건강하려고 시작한건데 너무 스트레스입니다.'),
(22, 'four', 'health', '자기에게 맞는 운동', '많은 사람들이 건강을 위해 운동을합니다．\r\n２０ ~ ３０ 대의 젊은 연령층은 건강과 멋진 몸매를 위해,\r\n ４０ ~ ５０ 대 주로 건강과 삶의 활력을 찾기 위해 운동을합니다．\r\n하지만 자신에게 맞지 않는 운동을하고있는 것이 아닌가 \r\n확인해 볼 필요가있습니다\r\n\r\n걷기， 조깅， 자전거 타기 구기 등의 성장에 도움이 \r\n즐거움을 느낄 수 있는 운동이 좋습니다． \r\n신체 능력이 좋은 사람은 자신이 충분하다고 느끼는 강도에서 \r\n운동을 해도 상관 없습니다． \r\n\r\n평소 좋아하는 운동을 일주일에 ４-５회， \r\n한번에 １ 시간 정도하는 것이 좋습니다． \r\n운동 전 스트레칭으로 근육을 풀어 부상을 예방하고,\r\n운동 후 땀을 잘 닦아 체온의 저하를 막아야합니다．'),
(23, 'four', 'mind', '식물로 다스리기', '코로나로 지치고 우울감을 느끼는 분들이 많으시죠?\r\n반려동물을 키우고 싶지만 챙겨줄 것도 많고 잘 못해줄까봐\r\n망설이는 분들도 많으실 거에요.\r\n\r\n그런 분들은 식물을 키워보는 건 어떨까요?\r\n작은 식물과 함께 하면서 하루하루를 보낸다면 행복해질 거에요.\r\n초보분들이어도 괜찮아요. \r\n요즘은 다육이같은 초보식물도 많이 있으니깐요!\r\n\r\n식물에 대해 궁금한 점이 있다면 댓글 주세요~'),
(24, 'four', 'health', '헬스장 고르는 법', '이제 여름이 다가오고 자연스럽게 반팔, 반바지를 입으면서 \r\n몸이 노출되는 계절이 오고 있습니다. \r\n그만큼 여름에는 몸매 관리에 더욱 신경 쓰게 되는데요, \r\n평소에 운동을 안 하셨다면 한 두달 정도만 열심히 운동해도 \r\n눈에 띄게 효과를 보실 수 있습니다.\r\n\r\n어느 헬스장을 가야될지 고민이 많으실텐데 팁을 알려드리겠습니다.\r\n\r\n1.거리\r\n2.기구와 사람 수\r\n3.가격\r\n4.그 외 시설\r\n\r\n'),
(25, 'three', 'free', '식단 공유', '다들 하루 식단이 어떻게 되시나요?\r\n저는 요즘 탄수화물 위주로 식단을 짜고있어요\r\n평소에 고구마를 좋아하기도 해서 고구마랑 바나나를 \r\n주로 먹고있습니다.'),
(26, 'three', 'mind', '칭찬하기', '칭찬에는 분명 강력한 위로와 치유의 효과가 있다. \r\n무조건적으로 타인을 치켜세우기보다는 \r\n그 사람에 대한 세심한 관찰과 분명한 근거를 들어 칭찬을 하는 것이 \r\n칭찬을 듣는 사람의 마음을 훨씬 따스하게 위로할 수 있다. \r\n오늘도 힘겨운 하루를 보낸 당신에게 꼭 들려주고 싶은 응원의 말이 있다. \r\n당신이 하고 있는 바로 그 일, 그것이 이 세상에 꼭 필요한 일이고 \r\n더없이 소중한 일이다. 누군가 당신의 재능을 칭찬해준다면, \r\n기꺼이 그 칭찬을 환한 미소로 받아주기를. \r\n오늘도 힘겹게 하루를 꾸려오며 누군가를 기쁘게 해준 당신. \r\n당신은 칭찬받을 자격이 있다. 당신은 더 많이 사랑받을 자격이 있다. \r\n당신은 바로 지금 그대로의 모습만으로도 눈부시고, 충만하며, 사랑스럽다.\r\n\r\n출처 : https://www.sedaily.com/NewsVIew/1Z2XUHQSG9'),
(27, 'three', 'health', '홈트할 때 조심해야할 것', '허리 운동, 매 동작 천천히 반복\r\n허리 운동 중에는 짐볼을 이용한 홈트레이닝이 자세를 교정하고 \r\n근육, 유연성을 강화할 수 있다는 점에서 인기가 좋다. \r\n하지만 혼자서 짐볼로 운동하다가 미끄러져 넘어지거나 \r\n허리를 삐끗해 다치는 경우도 있어 주의해야 한다.\r\n 볼 위에 등을 대고 하늘을 보거나 상체를 들어 올려 \r\n중심을 유지하는 자세가 많은데, 평소 익숙한 자세가 아니기 때문에 \r\n넘어지기 쉽다. \r\n\r\n최경원 원장은 \"이런 부상을 피하려면 짐볼에 앉아서 중심을 잡거나 \r\n벽에 짐볼을 밀어붙인 채 상체를 수직으로 유지하는 동작을 권한다\"고\r\n말했다. 볼에 앉을 때는 가장 높은 부분에 앉아서 몸이 뒤로 젖혀지거나\r\n 앞으로 숙여지지 않게 해야 한다. \r\n골반의 정중앙으로 앉는다고 생각하면 쉽게 중심을 잡을 수 있다. \r\n주변의 장애물을 미리 치워두는 것도 중요하다.\r\n\r\n다들 홈트 조심하세요!'),
(28, 'three', 'free', '[걱정] 요즘 체중이..', '너무 올라서 걱정입니다..\r\n글들을 모두 보아도 막막하네요\r\n어디부터 시작해야될지 모르겠습니다.'),
(30, 'three', 'health', '팔뚝살 운동', '보기 싫은데 빼기도 어려운 부위 팔뚝살이죠..\r\n빼고 싶은데 방법을 모르는 분들이 있을까봐 글올립니다.\r\n\r\n\r\n첫 번째. 벤치딥스\r\n\r\n1) 손끝을 엉덩이 방향으로 하여 바닥에 펼쳐두고\r\n2) 양 다리는 어깨너비로 벌려 엉덩이를 들어줍니다.\r\n(이때 팔 또한 펼쳐주어야 합니다)\r\n3) 엉덩이를 내리며 팔을 함께 접어줍니다.\r\n\r\n두 번째. 밴드 트레이닝\r\n\r\n1) 다리를 어깨 넓이로 벌려준 뒤 바르게 섭니다.\r\n2) 발로는 밴드를 밟아 주고 양 손으로 밴드를 꽉 쥔 뒤에\r\n3) 앞으로 손을 모아 어깨 높이까지 올려줍니다.\r\n4) 천천히 어깨너비만큼 좁힌 뒤 팔을 내려줍니다.\r\n\r\n세 번째. 덤벨 숄더 프레스\r\n\r\n1) 허리를 곧게 펴고 편안하게 앉아줍니다.\r\n2) 다음으로 두 손을 펼쳐 팔 옆으로 가져갑니다.\r\n3) 손을 위로 들었다 내렸다 반복합니다\r\n\r\n우리 모두 팔뚝살과 이별해보아요!'),
(31, 'four', 'mind', '음식과 행복함', '정신건강을 위해서 음식은 빼놓을 수 없는 것 같아요.\r\n아무리 힘들고 지쳐도 맛있는걸 먹으면 행복해지니까요!\r\n\r\n저는 주머니에 간식을 꼭 챙기고 다닌답니다.');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
