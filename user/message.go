package user

import "sync"
//消息记录结构体
type MsgHistory struct {
	Data []Msg `json:"msg"`
	MsgType   string `json:"msgType,omitempty"`
}
//消息结构体
type Msg struct {
	Sender    string `json:"sender,omitempty"`
	Content   string `json:"content,omitempty"`
	TheTime   string `json:"time,omitempty"`
}
var msgs =make([]Msg,20,20)
var mutex sync.RWMutex			//读写锁

func NewMsg(sender,msg,time string) {
	//上锁，限定顺序
	mutex.Lock()		//全局锁
	defer mutex.Unlock()
	theMsg:=Msg{Sender:sender,Content:msg,TheTime:time}		//  用户/消息/时间
	for key, value := range msgs {
		if key==0{
			msgs[19]=theMsg
		}else {
			msgs[key-1]=value
		}
	}
}

func GetMsgs()MsgHistory{
	mutex.RLock()
	defer mutex.RUnlock()

	return MsgHistory{Data:msgs,MsgType:"history"}
}