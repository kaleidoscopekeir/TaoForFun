package service.impl;

import java.util.List;

import model.Message;
import service.MessageService;
import dao.MessageDao;

public class MessageServiceImpl implements MessageService{
	
	private MessageDao messageDao;
	
	public void setMessageDao(MessageDao messageDao){
		this.messageDao = messageDao;
	}
	
	public boolean addMessage(Message message){
		Integer ref=(Integer) messageDao.save(message);
		if(ref!=null)  
            return true;  
        else  
            return false; 
	}
	
	public void deleteMessage(Message message){
		messageDao.delete(message);
	}
	

	public Message getMessageByMessageid(int messageid) {
		return messageDao.getMessageByMessageid(messageid);
	}

	public List<Message> getMessageBySender(String sender) {
		return messageDao.getMessageBySender(sender);
	}

	public List<Message> getMessageByBoth(String sender, String accepter) {
		return messageDao.getMessageByBoth(sender, accepter);
	}

}
