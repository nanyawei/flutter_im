// 组织聊天数据

// 消息枚举类型
enum MessageType {
  SYSTEM,
  PUBLIC,
  CHAT,
  GROUP
}

// 聊天数据
class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
}

List<MessageData> messageData = [
  MessageData('images/yixiu.jpeg', '一休哥', '突然想到的', DateTime.now(), MessageType.CHAT),
  MessageData('images/daxiong.jpeg', '大雄', '我的哆啦A梦呐！？', DateTime.now(), MessageType.CHAT),
  MessageData('images/police-huahua.jpeg', '小女警-花花', '等我 马上到 我是大哥', DateTime.now(), MessageType.CHAT),
  MessageData('images/police-paopao.jpeg', '小女警-泡泡', '等我 马上到 我是二哥', DateTime.now(), MessageType.CHAT),
  MessageData('images/police-maomao.jpeg', '小女警-毛毛', '等我 马上到 我是小老弟', DateTime.now(), MessageType.CHAT),
  MessageData('images/guaidaojide.jpeg', '怪盗基德', '柯南在哪里？我饿了饿了饿了饿了饿了饿了饿了饿了饿了饿了饿了饿了饿了饿了饿了饿了饿了', DateTime.now(), MessageType.CHAT),
  MessageData('images/bear-second.jpeg', '熊二', '熊大等着我找蜂蜜呢', DateTime.now(), MessageType.CHAT),
  MessageData('images/pikaqiu.jpeg', '侦探皮卡丘', '皮卡皮卡…^_^', DateTime.now(), MessageType.CHAT),

];